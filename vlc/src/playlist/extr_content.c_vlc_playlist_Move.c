
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t size; } ;
struct TYPE_6__ {int player; TYPE_2__ items; } ;
typedef TYPE_1__ vlc_playlist_t ;


 int assert (int) ;
 int vlc_player_InvalidateNextMedia (int ) ;
 int vlc_playlist_AssertLocked (TYPE_1__*) ;
 int vlc_playlist_ItemsMoved (TYPE_1__*,size_t,size_t,size_t) ;
 int vlc_vector_move_slice (TYPE_2__*,size_t,size_t,size_t) ;

void
vlc_playlist_Move(vlc_playlist_t *playlist, size_t index, size_t count,
                  size_t target)
{
    vlc_playlist_AssertLocked(playlist);
    assert(index + count <= playlist->items.size);
    assert(target + count <= playlist->items.size);

    vlc_vector_move_slice(&playlist->items, index, count, target);

    vlc_playlist_ItemsMoved(playlist, index, count, target);
    vlc_player_InvalidateNextMedia(playlist->player);
}
