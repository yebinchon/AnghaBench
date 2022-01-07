
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct vlc_player_input* input; } ;
typedef TYPE_1__ vlc_player_t ;
struct vlc_player_input {float position; TYPE_1__* player; } ;


 scalar_t__ vlc_player_GetTimerPoint (TYPE_1__*,int ,int *,float*) ;
 int vlc_tick_now () ;

float
vlc_player_input_GetPos(struct vlc_player_input *input)
{
    vlc_player_t *player = input->player;
    float pos;

    if (input == player->input
     && vlc_player_GetTimerPoint(player, vlc_tick_now(), ((void*)0), &pos) == 0)
        return pos;
    return input->position;
}
