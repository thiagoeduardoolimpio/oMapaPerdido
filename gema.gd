extends Area2D

signal coletada(nome_gema)

@export var nome_gema: String = "Gema"
@export_enum("idle_gemaVerde", "idle_gemaArcoiris", "idle_gemaAmarela", "idle_gemaAzul") var animacao: String = "idle_esmeralda"

func _ready():
	$AnimatedSprite2D.play(animacao)
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.is_in_group("jogador"):
		coletada.emit(nome_gema)
		queue_free()
