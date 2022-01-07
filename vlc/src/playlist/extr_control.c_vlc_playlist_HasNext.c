
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int has_next; } ;
typedef TYPE_1__ vlc_playlist_t ;


 int vlc_playlist_AssertLocked (TYPE_1__*) ;

bool
vlc_playlist_HasNext(vlc_playlist_t *playlist)
{
    vlc_playlist_AssertLocked(playlist);
    return playlist->has_next;
}
