extends Area2D

export(int) var SPEED = 50
var moving = false

onready var animationPlayer = $AnimationPlayer
onready var sprite = $Sprite

func _process(delta):
	moving = false
	if Input.is_action_pressed("ui_right"):
		move(SPEED, 0, delta)
		sprite.flip_h = false
	if Input.is_action_pressed("ui_left"):
		move(-SPEED, 0, delta)
		sprite.flip_h = true
	if Input.is_action_pressed("ui_up"):
		move(0, -SPEED, delta)
	if Input.is_action_pressed("ui_down"):
		move(0, SPEED, delta)
	
	if moving == true:
		animationPlayer.play("Run")
	else:
		animationPlayer.play("Idle")
	

func move(xspeed, yspeed, delta):
	position.x += xspeed * delta
	position.y += yspeed * delta
	moving = true