/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
cima = 0;
baixo = 0;
direita = 0;
esquerda = 0;
colidiu = false;
global.inimigo = false;

if keyboard_check(ord("W")){
	cima = movement_speed
}

if keyboard_check(ord("A")){
	esquerda = movement_speed
}

if keyboard_check(ord("S")){
	baixo = movement_speed
}

if keyboard_check(ord("D")){
	direita = movement_speed
}


if (place_meeting(x + 5, y, obj_collision)){
	colidiu = true;
	direita = 0;
}

if (place_meeting(x - 5, y, obj_collision)){
	colidiu = true;
	esquerda = 0;
}

if (place_meeting(x, y - 5, obj_collision)){
	colidiu = true;
	cima = 0;

}

if (place_meeting(x, y + 5, obj_collision)){
	colidiu = true;
	baixo = 0;
}

if(place_meeting(x + 100, y, obj_creature01) 
	|| place_meeting(x - 100, y, obj_creature01) 
	|| place_meeting(x, y + 100, obj_creature01) 
	|| place_meeting(x, y - 100, obj_creature01))
{
	global.inimigo = true;
	instance_create_layer(x, y, "attacks", obj_attack01);
}

x += direita - esquerda;
y += baixo - cima;

