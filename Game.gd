extends Node2D



func _on_topo_body_entered(body):
	print('ping')
	body.direction.y *= -1
	

func _on_fundo_body_entered(body):
	print('pong')
	body.direction.y *= -1

	

func _on_esquerda_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(576,320)
	add_child(e)
	Main.p2_score += 1
func _on_direita_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(576,320)
	add_child(e)
	Main.p2_score += 1
