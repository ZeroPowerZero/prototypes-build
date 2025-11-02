extends Node3D

@onready var mesh_instance_3d: MeshInstance3D = $MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.




func _process(delta):
	if Input.is_action_pressed("ui_up"):
		scale += Vector3.ONE * delta * 10     # grow smoothly
	elif Input.is_action_pressed("ui_down"):
		scale -= Vector3.ONE * delta     # shrink smoothly
