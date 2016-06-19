///player_punch()

// TODO: use punch animations

if(not has_punched) {
    hspeed = 0;
    var punch;
    if (facing_left) {
        punch = instance_create(x-50, y-150, obj_attack);
    } else {
        punch = instance_create(x+50, y-150, obj_attack);
    }
    sprite_index = spr_player_punch;
    image_index = 0;
    image_speed = 0.5;
    punch.from_player = true;
    punch.damage = 1;
    
    has_punched = true;
    alarm[0] = 10;  // delay until next punch
}
