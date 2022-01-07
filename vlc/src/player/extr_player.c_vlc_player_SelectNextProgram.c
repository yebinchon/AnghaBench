
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;


 int vlc_player_CycleProgram (int *,int) ;

void
vlc_player_SelectNextProgram(vlc_player_t *player)
{
    vlc_player_CycleProgram(player, 1);
}
