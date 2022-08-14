extends KinematicBody2D

var motion = Vector2()

func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	var Player = get_parent().get_node("Player")
	
	position += (Player.position - position)/50
	look_at(Player.position)
	
	move_and_collide(motion)


func _on_Area2D_body_entered(body: Node) -> void:
	if "Bullet" in body.name:
		queue_free()
