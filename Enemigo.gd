extends KinematicBody2D

export var speed = 100

func _physics_process(delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		direction.x += 1
		direction.y = 0
		rotation = PI/2
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
		direction.y = 0
		rotation = 3*PI/2
	if Input.is_action_pressed("move_down"):
		direction.y += 1
		direction.x = 0
		rotation = PI
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
		direction.x = 0
		rotation = 0
		
	if direction.length() > 1:
		direction = direction.normalized()
		
	position += direction * speed * delta
