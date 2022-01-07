
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 scalar_t__ vlc_player_CanPause (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Pause (int *) ;
 int vlc_player_Resume (int *) ;
 int vlc_player_Stop (int *) ;
 int vlc_player_Unlock (int *) ;

void libvlc_media_player_set_pause( libvlc_media_player_t *p_mi, int paused )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    if (paused)
    {
        if (vlc_player_CanPause(player))
            vlc_player_Pause(player);
        else
            vlc_player_Stop(player);
    }
    else
    {
        vlc_player_Resume(player);
    }

    vlc_player_Unlock(player);
}
