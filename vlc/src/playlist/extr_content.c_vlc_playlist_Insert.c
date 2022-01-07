
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t size; int * data; } ;
struct TYPE_8__ {int player; TYPE_2__ items; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef int input_item_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int vlc_player_InvalidateNextMedia (int ) ;
 int vlc_playlist_AssertLocked (TYPE_1__*) ;
 int vlc_playlist_ItemsInserted (TYPE_1__*,size_t,size_t) ;
 int vlc_playlist_MediaToItems (TYPE_1__*,int * const*,size_t,int *) ;
 int vlc_vector_insert_hole (TYPE_2__*,size_t,size_t) ;
 int vlc_vector_remove_slice (TYPE_2__*,size_t,size_t) ;

int
vlc_playlist_Insert(vlc_playlist_t *playlist, size_t index,
                    input_item_t *const media[], size_t count)
{
    vlc_playlist_AssertLocked(playlist);
    assert(index <= playlist->items.size);


    if (!vlc_vector_insert_hole(&playlist->items, index, count))
        return VLC_ENOMEM;


    int ret = vlc_playlist_MediaToItems(playlist, media, count,
                                        &playlist->items.data[index]);
    if (ret != VLC_SUCCESS)
    {

        vlc_vector_remove_slice(&playlist->items, index, count);
        return ret;
    }

    vlc_playlist_ItemsInserted(playlist, index, count);
    vlc_player_InvalidateNextMedia(playlist->player);

    return VLC_SUCCESS;
}
