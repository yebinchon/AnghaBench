
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef int ssize_t ;


 int vlc_playlist_AssertLocked (TYPE_1__*) ;

ssize_t
vlc_playlist_GetCurrentIndex(vlc_playlist_t *playlist)
{
    vlc_playlist_AssertLocked(playlist);
    return playlist->current;
}
