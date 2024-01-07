extends Node2D

const MissionWorldBase = preload("res://Scenes/MissionWorldBase.tscn")

enum GAME_TYPE{
	TESTWORLD,
	SANDBOX
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_main_menu_start_game(gameType: GAME_TYPE):
	$MainMenu.queue_free()
	if gameType == GAME_TYPE.TESTWORLD:
		var missionWorldBase = MissionWorldBase.instantiate()
		self.add_child(missionWorldBase)
		missionWorldBase.generateMission()
	
