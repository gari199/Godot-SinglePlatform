extends Area2D

@onready var timer: Timer = $Timer

#Cuando el jugador toca la zona, un timer de 0.6s empieza y se ve el mensaje por pantalla.
#Cuando el timer acaba, la senhal _on_timer_timeout() reinicia la escena total

func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
