
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int started; int * input; } ;
typedef TYPE_1__ vlc_player_t ;
struct vlc_player_input {int dummy; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vlc_player_CancelWaitError (TYPE_1__*) ;
 int vlc_player_InvalidateNextMedia (TYPE_1__*) ;
 int vlc_player_destructor_AddInput (TYPE_1__*,struct vlc_player_input*) ;
 struct vlc_player_input* vlc_player_get_input_locked (TYPE_1__*) ;

int
vlc_player_Stop(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    vlc_player_CancelWaitError(player);

    vlc_player_InvalidateNextMedia(player);

    if (!input || !player->started)
        return VLC_EGENERIC;
    player->started = 0;

    vlc_player_destructor_AddInput(player, input);
    player->input = ((void*)0);
    return VLC_SUCCESS;
}
