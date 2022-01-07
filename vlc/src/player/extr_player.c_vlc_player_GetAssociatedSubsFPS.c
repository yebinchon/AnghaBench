
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;


 float var_GetFloat (int *,char*) ;
 int vlc_player_assert_locked (int *) ;

float
vlc_player_GetAssociatedSubsFPS(vlc_player_t *player)
{
    vlc_player_assert_locked(player);
    return var_GetFloat(player, "sub-fps");
}
