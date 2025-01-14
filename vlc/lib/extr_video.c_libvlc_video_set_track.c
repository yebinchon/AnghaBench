
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_track {int es_id; } ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 int VLC_PLAYER_SELECT_EXCLUSIVE ;
 int libvlc_printerr (char*) ;
 int vlc_es_id_GetInputId (int ) ;
 struct vlc_player_track* vlc_player_GetVideoTrackAt (int *,size_t) ;
 size_t vlc_player_GetVideoTrackCount (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SelectTrack (int *,struct vlc_player_track const*,int ) ;
 int vlc_player_Unlock (int *) ;

int libvlc_video_set_track( libvlc_media_player_t *p_mi, int i_track )
{
    int i_ret = -1;

    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    size_t count = vlc_player_GetVideoTrackCount(player);
    for( size_t i = 0; i < count; i++ )
    {
        const struct vlc_player_track *track =
            vlc_player_GetVideoTrackAt(player, i);
        if (i_track == vlc_es_id_GetInputId(track->es_id))
        {

            vlc_player_SelectTrack(player, track, VLC_PLAYER_SELECT_EXCLUSIVE);
            i_ret = 0;
            goto end;
        }
    }
    libvlc_printerr( "Track identifier not found" );
end:
    vlc_player_Unlock(player);
    return i_ret;
}
