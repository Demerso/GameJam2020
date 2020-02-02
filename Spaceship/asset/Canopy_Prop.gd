extends Area2D

var props 
var for_tra = Vector2()
var mov_speed = 0.3

func _process(delta):
	props = get_node("Canopy_Fixed")
	props = translate(for_tra)

func _on_Timer_timeout():
	if for_tra == Vector2(0,-mov_speed):
		for_tra = Vector2(0, mov_speed)
	else:
		for_tra = Vector2(0, -mov_speed)
		
func _on_Canopy_Prop_body_entered(body):
	print("Body Entered - Canopy Prop")
