
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_input {int dummy; } ;


 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 float vlc_player_input_GetPos (struct vlc_player_input*) ;

float
vlc_player_GetPosition(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    return input ? vlc_player_input_GetPos(input) : -1.f;
}
