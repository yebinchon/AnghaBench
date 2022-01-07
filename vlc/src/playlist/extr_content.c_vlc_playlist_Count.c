
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; } ;
struct TYPE_6__ {TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;


 int vlc_playlist_AssertLocked (TYPE_2__*) ;

size_t
vlc_playlist_Count(vlc_playlist_t *playlist)
{
    vlc_playlist_AssertLocked(playlist);
    return playlist->items.size;
}
