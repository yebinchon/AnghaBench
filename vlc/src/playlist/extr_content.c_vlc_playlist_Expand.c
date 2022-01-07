
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {size_t size; int * data; } ;
struct TYPE_11__ {scalar_t__ current; int player; TYPE_2__ items; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef scalar_t__ ssize_t ;
typedef int input_item_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int vlc_player_InvalidateNextMedia (int ) ;
 int vlc_playlist_AssertLocked (TYPE_1__*) ;
 int vlc_playlist_ItemsInserted (TYPE_1__*,size_t,size_t) ;
 int vlc_playlist_MediaToItems (TYPE_1__*,int * const*,size_t,int *) ;
 int vlc_playlist_RemoveOne (TYPE_1__*,size_t) ;
 int vlc_playlist_Replace (TYPE_1__*,size_t,int * const) ;
 int vlc_playlist_SetCurrentMedia (TYPE_1__*,scalar_t__) ;
 int vlc_vector_insert_hole (TYPE_2__*,size_t,size_t) ;
 int vlc_vector_remove_slice (TYPE_2__*,size_t,size_t) ;

int
vlc_playlist_Expand(vlc_playlist_t *playlist, size_t index,
                    input_item_t *const media[], size_t count)
{
    vlc_playlist_AssertLocked(playlist);
    assert(index < playlist->items.size);

    if (count == 0)
        vlc_playlist_RemoveOne(playlist, index);
    else
    {
        int ret = vlc_playlist_Replace(playlist, index, media[0]);
        if (ret != VLC_SUCCESS)
            return ret;

        if (count > 1)
        {

            if (!vlc_vector_insert_hole(&playlist->items, index + 1, count - 1))
                return VLC_ENOMEM;


            ret = vlc_playlist_MediaToItems(playlist, &media[1], count - 1,
                                            &playlist->items.data[index + 1]);
            if (ret != VLC_SUCCESS)
            {

                vlc_vector_remove_slice(&playlist->items, index + 1, count - 1);
                return ret;
            }
            vlc_playlist_ItemsInserted(playlist, index + 1, count - 1);
        }

        if ((ssize_t) index == playlist->current)
            vlc_playlist_SetCurrentMedia(playlist, playlist->current);
        else
            vlc_player_InvalidateNextMedia(playlist->player);
    }

    return VLC_SUCCESS;
}
