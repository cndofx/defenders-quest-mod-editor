extends Control

@onready var open_image_dialog: FileDialog = %OpenImageDialog
@onready var project_icon_image: TextureRect = %ProjectIconImage


func _on_change_project_icon_button_pressed() -> void:
	open_image_dialog.popup()


func _on_open_image_dialog_file_selected(path: String) -> void:
	var image = Image.load_from_file(path)
	var texture = ImageTexture.create_from_image(image)
	project_icon_image.texture = texture
