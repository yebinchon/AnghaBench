
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t size; int ** data; } ;
struct TYPE_7__ {scalar_t__ order; TYPE_1__ items; int randomizer; int idgen; } ;
typedef TYPE_2__ vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int uint64_t ;
typedef int input_item_t ;


 int VLC_ENOMEM ;
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int randomizer_Add (int *,int **,int) ;
 int randomizer_Remove (int *,int **,int) ;
 int vlc_playlist_AssertLocked (TYPE_2__*) ;
 int vlc_playlist_ItemReplaced (TYPE_2__*,size_t) ;
 int * vlc_playlist_item_New (int *,int ) ;
 int vlc_playlist_item_Release (int *) ;

__attribute__((used)) static int
vlc_playlist_Replace(vlc_playlist_t *playlist, size_t index,
                     input_item_t *media)
{
    vlc_playlist_AssertLocked(playlist);
    assert(index < playlist->items.size);

    uint64_t id = playlist->idgen++;
    vlc_playlist_item_t *item = vlc_playlist_item_New(media, id);
    if (!item)
        return VLC_ENOMEM;

    if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
    {
        randomizer_Remove(&playlist->randomizer,
                          &playlist->items.data[index], 1);
        randomizer_Add(&playlist->randomizer, &item, 1);
    }

    vlc_playlist_item_Release(playlist->items.data[index]);
    playlist->items.data[index] = item;

    vlc_playlist_ItemReplaced(playlist, index);
    return VLC_SUCCESS;
}
