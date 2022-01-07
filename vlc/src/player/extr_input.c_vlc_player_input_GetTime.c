
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {struct vlc_player_input* input; } ;
typedef TYPE_1__ vlc_player_t ;
struct vlc_player_input {int time; TYPE_1__* player; } ;


 scalar_t__ vlc_player_GetTimerPoint (TYPE_1__*,int ,int *,int *) ;
 int vlc_tick_now () ;

vlc_tick_t
vlc_player_input_GetTime(struct vlc_player_input *input)
{
    vlc_player_t *player = input->player;
    vlc_tick_t ts;

    if (input == player->input
     && vlc_player_GetTimerPoint(player, vlc_tick_now(), &ts, ((void*)0)) == 0)
        return ts;
    return input->time;
}
