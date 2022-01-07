
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ** data; } ;
struct TYPE_6__ {TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;
typedef int vlc_playlist_item_t ;


 int vlc_playlist_AssertLocked (TYPE_2__*) ;

vlc_playlist_item_t *
vlc_playlist_Get(vlc_playlist_t *playlist, size_t index)
{
    vlc_playlist_AssertLocked(playlist);
    return playlist->items.data[index];
}
