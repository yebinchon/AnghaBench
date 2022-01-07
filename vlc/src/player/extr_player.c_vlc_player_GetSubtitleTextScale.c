
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;


 int var_GetInteger (int *,char*) ;

unsigned
vlc_player_GetSubtitleTextScale(vlc_player_t *player)
{
    return var_GetInteger(player, "sub-text-scale");
}
