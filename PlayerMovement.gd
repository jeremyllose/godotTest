extends CharacterBody2D

@export var speed = 400

func _physics_process(delta):
	# Get directional input
	var input_direction = Input.get_vector("left", "right", "up", "down")
	
	# Debug log: show input vector
	print("Input direction:", input_direction)
	
	# Set velocity
	velocity = input_direction * speed

	# Debug log: show velocity
	print("Velocity:", velocity)
	
	print("Position:", global_position)
	
	
	# Move character
	move_and_slide()
