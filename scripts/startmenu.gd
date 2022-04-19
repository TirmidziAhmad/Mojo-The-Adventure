extends Control

onready var setting_menu = $SettingsMenu
onready var inventory_menu = $InventoryMenu
onready var shop_menu = $ShopMenu
onready var video_settings = $SettingsMenu/MainMenu2/SettingsContainer/VideoSettings
onready var audio_settings = $SettingsMenu/MainMenu2/SettingsContainer/AudioSettings
onready var control_settings = $SettingsMenu/MainMenu2/SettingsContainer/ControlsSettings
onready var start_btn = $MainMenu/StartBtn

func _ready():
	start_btn.grab_focus()

func _on_StartBtn_pressed():
	get_tree().change_scene("res://screens/World.tscn")

func _on_ShopBtn_pressed():
	shop_menu.popup_centered()
	

func _on_SettingsBtn_pressed():
	setting_menu.popup_centered()
	hide_settings()
	video_settings.show()


func _on_QuitBtn_pressed():
	get_tree().quit()


func _on_VideoBtn_pressed():
	hide_settings()
	video_settings.show()


func _on_AudioBtn_pressed():
	hide_settings()
	audio_settings.show()


func _on_ControlsBtn_pressed():
	hide_settings()
	control_settings.show()
	
	
func hide_settings():
	video_settings.hide()
	audio_settings.hide()
	control_settings.hide()

func _on_BackBtn_pressed():
	setting_menu.hide()
