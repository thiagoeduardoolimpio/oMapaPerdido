extends Control

@onready var contador_gemas = $container/gemas_container/contador as Label
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	contador_gemas = str("%04d" % Globals.gemas)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
