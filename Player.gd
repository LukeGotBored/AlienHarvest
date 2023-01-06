extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (int) var playerSpeed = 200
var velocity = Vector2()



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	velocity = velocity.normalized() * playerSpeed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
