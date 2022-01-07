
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;
typedef enum vlc_player_seek_speed { ____Placeholder_vlc_player_seek_speed } vlc_player_seek_speed ;


 int VLC_PLAYER_SEEK_FAST ;
 int VLC_PLAYER_SEEK_PRECISE ;
 int VLC_PLAYER_WHENCE_ABSOLUTE ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SeekByPos (int *,float,int,int ) ;
 int vlc_player_Unlock (int *) ;

int libvlc_media_player_set_position( libvlc_media_player_t *p_mi,
                                       float position, bool b_fast )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    enum vlc_player_seek_speed speed = b_fast ? VLC_PLAYER_SEEK_FAST
                                              : VLC_PLAYER_SEEK_PRECISE;
    vlc_player_SeekByPos(player, position, speed, VLC_PLAYER_WHENCE_ABSOLUTE);

    vlc_player_Unlock(player);


    return 0;
}
