
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int repeat; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;


 int vlc_playlist_AssertLocked (TYPE_1__*) ;
 int vlc_playlist_PlaybackRepeatChanged (TYPE_1__*) ;

void
vlc_playlist_SetPlaybackRepeat(vlc_playlist_t *playlist,
                               enum vlc_playlist_playback_repeat repeat)
{
    vlc_playlist_AssertLocked(playlist);

    if (playlist->repeat == repeat)
        return;

    playlist->repeat = repeat;
    vlc_playlist_PlaybackRepeatChanged(playlist);
}
