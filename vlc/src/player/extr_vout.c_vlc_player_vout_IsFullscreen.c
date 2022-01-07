
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;


 int var_GetBool (int *,char*) ;

bool
vlc_player_vout_IsFullscreen(vlc_player_t *player)
{
    return var_GetBool(player, "fullscreen");
}
