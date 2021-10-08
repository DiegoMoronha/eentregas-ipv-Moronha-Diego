extends Node

export (NodePath) var pathFinding


func _ready():
	if pathFinding.is_empty():
		return
	
	var pathfinder:PathfindAstar = get_node(pathFinding)
	if pathfinder == null:
		return
	
	for child in get_children():
		if child is Turret:
			child.pathFinding = pathfinder
