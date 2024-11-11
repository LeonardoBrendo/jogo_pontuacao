extends Area2D

var direction: Vector2 
var speed: int = 350
var can_move: bool

func _process(delta: float) -> void:
	if can_move:
		position += direction * speed * delta

func _on_down_button_button_down() -> void:
	can_move = true
	direction = Vector2.DOWN
	
func _on_down_button_button_up() -> void:
	can_move = false

func _on_up_button_button_down() -> void:
	can_move = true
	direction = Vector2.UP

func _on_up_button_button_up() -> void:
	can_move = false
	
func _on_right_button_button_down() -> void:
	can_move = true
	direction = Vector2.RIGHT

func _on_right_button_button_up() -> void:
	can_move = false

func _on_left_button_button_down() -> void:
	can_move = true
	direction = Vector2.LEFT
	
func _on_left_button_button_up() -> void:
	can_move = false
