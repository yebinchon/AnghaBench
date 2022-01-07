
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;


 int vlc_player_vout_TriggerOption (int *,char*) ;

void
vlc_player_vout_Snapshot(vlc_player_t *player)
{
    vlc_player_vout_TriggerOption(player, "video-snapshot");
}
