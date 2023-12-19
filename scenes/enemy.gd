extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var sprite_2d = $Sprite2D

var enemyVelocity = Vector2()  # Renamed local velocity variable to avoid conflict
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction = 1

func _physics_process(delta):
#Animations
	if (velocity.x > 1 || velocity.x < -1):
		sprite_2d.animation = "run"
	else:
		sprite_2d.animation = "idle"
