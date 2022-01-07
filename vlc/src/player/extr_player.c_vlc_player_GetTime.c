
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int vlc_player_t ;
struct vlc_player_input {int dummy; } ;


 int VLC_TICK_INVALID ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 int vlc_player_input_GetTime (struct vlc_player_input*) ;

vlc_tick_t
vlc_player_GetTime(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    if (!input)
        return VLC_TICK_INVALID;

    return vlc_player_input_GetTime(input);
}
