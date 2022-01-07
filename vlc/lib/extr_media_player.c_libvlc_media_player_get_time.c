
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int vlc_player_t ;
typedef int libvlc_time_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 int from_mtime (int ) ;
 int vlc_player_GetTime (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;

libvlc_time_t libvlc_media_player_get_time( libvlc_media_player_t *p_mi )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    vlc_tick_t tick = vlc_player_GetTime(player);
    libvlc_time_t i_time = from_mtime(tick);

    vlc_player_Unlock(player);
    return i_time;
}
