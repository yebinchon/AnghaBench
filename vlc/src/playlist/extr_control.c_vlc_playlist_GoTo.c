
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t size; int ** data; } ;
struct TYPE_8__ {scalar_t__ order; int randomizer; TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int ssize_t ;


 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int randomizer_Select (int *,int *) ;
 int vlc_playlist_AssertLocked (TYPE_2__*) ;
 int vlc_playlist_SetCurrentIndex (TYPE_2__*,int) ;
 int vlc_playlist_SetCurrentMedia (TYPE_2__*,int) ;

int
vlc_playlist_GoTo(vlc_playlist_t *playlist, ssize_t index)
{
    vlc_playlist_AssertLocked(playlist);
    assert(index == -1 || (size_t) index < playlist->items.size);

    int ret = vlc_playlist_SetCurrentMedia(playlist, index);
    if (ret != VLC_SUCCESS)
        return ret;

    if (index != -1 && playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
    {
        vlc_playlist_item_t *item = playlist->items.data[index];
        randomizer_Select(&playlist->randomizer, item);
    }

    vlc_playlist_SetCurrentIndex(playlist, index);
    return VLC_SUCCESS;
}
