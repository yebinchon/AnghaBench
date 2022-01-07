
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_track {int es_id; } ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 int VIDEO_ES ;
 int vlc_es_id_GetInputId (int ) ;
 struct vlc_player_track* vlc_player_GetSelectedTrack (int *,int ) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;

int libvlc_video_get_track( libvlc_media_player_t *p_mi )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    const struct vlc_player_track * track =
        vlc_player_GetSelectedTrack(player, VIDEO_ES);
    int id = track ? vlc_es_id_GetInputId(track->es_id) : -1;

    vlc_player_Unlock(player);
    return id;
}
