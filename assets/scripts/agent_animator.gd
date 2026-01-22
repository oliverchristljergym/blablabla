extends Node2D

@export var elka_controller : ElkaController
@export var animation_player : AnimationPlayer
@export var sprite : Sprite2D

func _process(delta):
	if elka_controller.direction == 1:
		sprite.flip_h = false
	elif elka_controller.direction == -1:
		sprite.flip_h = true

	if abs(elka_controller.velocity.x) > 0.0 :
		animation_player.play("pohyb")
	else :
		animation_player.play("idle")
		#udelej skakani 22:22
