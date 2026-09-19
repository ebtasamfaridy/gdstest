extends CanvasLayer


@onready var _move_left: BaseButton = $Controls/MoveLeft
@onready var _move_right: BaseButton = $Controls/MoveRight
@onready var _jump: BaseButton = $Controls/Jump


func _ready() -> void:
	visible = _should_show_touch_controls()
	_bind_button(_move_left, "move_left")
	_bind_button(_move_right, "move_right")
	_bind_button(_jump, "jump")


func _should_show_touch_controls() -> bool:
	return (
		OS.has_feature("mobile")
		or OS.has_feature("android")
		or DisplayServer.is_touchscreen_available()
	)


func _bind_button(button: BaseButton, action: String) -> void:
	button.button_down.connect(func() -> void: Input.action_press(action))
	button.button_up.connect(func() -> void: Input.action_release(action))


func _notification(what: int) -> void:
	if what == NOTIFICATION_APPLICATION_PAUSED:
		Input.action_release("move_left")
		Input.action_release("move_right")
		Input.action_release("jump")
