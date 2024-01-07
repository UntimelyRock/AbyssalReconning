extends Node2D

enum MISSIONTYPE {
	TESTMAP
}

func __loadMissionGenerator(MISSIONTYPE) -> PackedScene:
	return load("res://Scenes/Levels/TestMap.tscn")

func generateMission(missionType: MISSIONTYPE):
	var missionGenerator = __loadMissionGenerator(missionType).instantiate()
	self.add_child(missionGenerator)
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
