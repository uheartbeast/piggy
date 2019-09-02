extends Area2D

const SPEED = 4

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		move(SPEED, 0)
	if Input.is_action_pressed("ui_left"):
		move(-SPEED, 0)
	if Input.is_action_pressed("ui_up"):
		move(0, -SPEED)
	if Input.is_action_pressed("ui_down"):
		move(0, SPEED)

func move(xspeed, yspeed):
	position.x += xspeed
	position.y += yspeed