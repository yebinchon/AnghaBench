
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t size; int * data; } ;
struct TYPE_8__ {int player; int current; TYPE_2__ items; } ;
typedef TYPE_1__ vlc_playlist_t ;


 int assert (int) ;
 int vlc_player_InvalidateNextMedia (int ) ;
 int vlc_playlist_AssertLocked (TYPE_1__*) ;
 int vlc_playlist_ItemsRemoved (TYPE_1__*,size_t,size_t) ;
 int vlc_playlist_ItemsRemoving (TYPE_1__*,size_t,size_t) ;
 int vlc_playlist_SetCurrentMedia (TYPE_1__*,int ) ;
 int vlc_playlist_item_Release (int ) ;
 int vlc_vector_remove_slice (TYPE_2__*,size_t,size_t) ;

void
vlc_playlist_Remove(vlc_playlist_t *playlist, size_t index, size_t count)
{
    vlc_playlist_AssertLocked(playlist);
    assert(index < playlist->items.size);

    vlc_playlist_ItemsRemoving(playlist, index, count);

    for (size_t i = 0; i < count; ++i)
        vlc_playlist_item_Release(playlist->items.data[index + i]);

    vlc_vector_remove_slice(&playlist->items, index, count);

    bool current_media_changed = vlc_playlist_ItemsRemoved(playlist, index,
                                                           count);
    if (current_media_changed)
        vlc_playlist_SetCurrentMedia(playlist, playlist->current);
    else
        vlc_player_InvalidateNextMedia(playlist->player);
}
