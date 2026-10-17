extends CharacterBody3D

var speed: int = 10

func _process(delta: float) -> void:
	var velocity: Vector3 = Vector3.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity.z -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.z += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * delta
		position += velocity * speed
