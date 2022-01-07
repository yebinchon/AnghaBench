
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;
typedef int int64_t ;


 int VLC_PLAYER_WHENCE_ABSOLUTE ;
 int VLC_TICK_FROM_US (int ) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SetAudioDelay (int *,int ,int ) ;
 int vlc_player_Unlock (int *) ;

int libvlc_audio_set_delay( libvlc_media_player_t *p_mi, int64_t i_delay )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    vlc_player_SetAudioDelay(player, VLC_TICK_FROM_US(i_delay),
                             VLC_PLAYER_WHENCE_ABSOLUTE);

    vlc_player_Unlock(player);

    return 0;
}
