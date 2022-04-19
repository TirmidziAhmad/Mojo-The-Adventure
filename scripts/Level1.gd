extends Control

onready var Pause_btn = $PauseBtn

func _ready():
	Pause_btn.grab_focus()

func _on_PauseBtn_pressed():
	get_tree().change_scene("res://screens/startmenu.tscn")
