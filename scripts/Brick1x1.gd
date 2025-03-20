class_name Brick1x1 extends Node3D


func _ready():
	var obj_mesh = load("res://assets/meshes/Brick1x1.obj")  # Load OBJ file
	if obj_mesh is ArrayMesh:
		var mesh_instance = MeshInstance3D.new()
		mesh_instance.mesh = obj_mesh  # Assign the loaded ArrayMesh
		var standard_mesh_material = StandardMaterial3D.new()
		standard_mesh_material.albedo_color = 'AQUA'
		mesh_instance.set_surface_override_material(0, standard_mesh_material)
		add_child(mesh_instance)  # Add to the scene
	else:
		print("Failed to load OBJ as ArrayMesh")
		
	var obj_mesh2 = load("res://Brick1x1.obj")  # Load OBJ file
	if obj_mesh2 is ArrayMesh:
		var mesh_instance2 = MeshInstance3D.new()
		mesh_instance2.mesh = obj_mesh2  # Assign the loaded ArrayMesh
		var standard_mesh_material2 = StandardMaterial3D.new()
		standard_mesh_material2.albedo_color = 'DARK_RED'
		mesh_instance2.set_surface_override_material(0, standard_mesh_material2)
		mesh_instance2.global_transform.origin = Vector3(0, 0, -4)
		add_child(mesh_instance2)  # Add to the scene
	else:
		print("Failed to load OBJ as ArrayMesh")
