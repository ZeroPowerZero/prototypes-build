extends VehicleBody3D

@onready var camera_origin: Node3D = $cameraOrigin




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg_to_rad(-event.relative.x*0.5))
		camera_origin.rotate_x(deg_to_rad(-event.relative.y*0.5))
		camera_origin.rotation.x = clamp(camera_origin.rotation.x,deg_to_rad(-90),deg_to_rad(45))
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
		
		
