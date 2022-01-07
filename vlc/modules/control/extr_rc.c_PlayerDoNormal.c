
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;


 int vlc_player_ChangeRate (int *,float) ;

__attribute__((used)) static void PlayerDoNormal(vlc_player_t *player)
{
    vlc_player_ChangeRate(player, 1.f);
}
