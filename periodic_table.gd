extends Sprite2D

var start = preload("res://Images/Start.png")
var alkali = preload("res://Images/alkali.png")
var alkaline = preload("res://Images/alkaline.png")
var transition = preload("res://Images/transition.png")
var posttransition = preload("res://Images/posttransition.png")
var metalloid = preload("res://Images/metalloid.png")
var nonmetal = preload("res://Images/nonmetal.png")
var noble = preload("res://Images/noble.png")
var rare = preload("res://Images/rare.png")
var boron = preload("res://Images/boron.png")
var carbon = preload("res://Images/carbon.png")
var nitrogen = preload("res://Images/nitrogen.png")
var oxygen = preload("res://Images/oxygen.png")
var halogen = preload("res://Images/halogens.png")
var on := false

func toStart():
	$Description.texture = start

func _ready() -> void:
	toStart()

func _on_rare_mouse_entered() -> void:
	$Description.texture = rare


func _on_noble_mouse_entered() -> void:
	$Description.texture = noble


func _on_nonmetal_mouse_entered() -> void:
	$Description.texture = nonmetal


func _on_post_transition_mouse_entered() -> void:
	$Description.texture = posttransition


func _on_metalloid_mouse_entered() -> void:
	$Description.texture = metalloid


func _on_transition_mouse_entered() -> void:
	$Description.texture = transition


func _on_alkaline_mouse_entered() -> void:
	$Description.texture = alkaline



func _on_alkali_mouse_entered() -> void:
	$Description.texture = alkali


func _on_click_area_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		if on:
			$switch/slider/AnimationPlayer.play("left")
			$metal_metalloid_nonmetalGroups.show()
			$"p-blockGroups".hide()
			toStart()
		else:
			$switch/slider/AnimationPlayer.play("right")
			$metal_metalloid_nonmetalGroups.hide()
			$"p-blockGroups".show()
			toStart()
		on = !on


func _on_boron_mouse_entered() -> void:
	$Description.texture = boron


func _on_carbon_mouse_entered() -> void:
	$Description.texture = carbon


func _on_nitrogen_mouse_entered() -> void:
	$Description.texture = nitrogen


func _on_oxygen_mouse_entered() -> void:
	$Description.texture = oxygen


func _on_halogens_mouse_entered() -> void:
	$Description.texture = halogen
