
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ repeat; int current; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef int ssize_t ;


 scalar_t__ VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT ;
 int vlc_playlist_AssertLocked (TYPE_1__*) ;
 int vlc_playlist_ComputeHasNext (TYPE_1__*) ;
 int vlc_playlist_GetNextIndex (TYPE_1__*) ;

__attribute__((used)) static ssize_t
vlc_playlist_GetNextMediaIndex(vlc_playlist_t *playlist)
{
    vlc_playlist_AssertLocked(playlist);
    if (playlist->repeat == VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT)
        return playlist->current;
    if (!vlc_playlist_ComputeHasNext(playlist))
        return -1;
    return vlc_playlist_GetNextIndex(playlist);
}
