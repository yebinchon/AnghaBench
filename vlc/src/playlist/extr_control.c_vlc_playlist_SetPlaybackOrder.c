
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int order; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;


 int vlc_playlist_AssertLocked (TYPE_1__*) ;
 int vlc_playlist_PlaybackOrderChanged (TYPE_1__*) ;

void
vlc_playlist_SetPlaybackOrder(vlc_playlist_t *playlist,
                              enum vlc_playlist_playback_order order)
{
    vlc_playlist_AssertLocked(playlist);

    if (playlist->order == order)
        return;

    playlist->order = order;
    vlc_playlist_PlaybackOrderChanged(playlist);
}
