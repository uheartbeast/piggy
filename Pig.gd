extends Area2D

export(int) var SPEED = 50

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		move(SPEED, 0, delta)
	if Input.is_action_pressed("ui_left"):
		move(-SPEED, 0, delta)
	if Input.is_action_pressed("ui_up"):
		move(0, -SPEED, delta)
	if Input.is_action_pressed("ui_down"):
		move(0, SPEED, delta)

func move(xspeed, yspeed, delta):
	position.x += xspeed * delta
	position.y += yspeed * delta