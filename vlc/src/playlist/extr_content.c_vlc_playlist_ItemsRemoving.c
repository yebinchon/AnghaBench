
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
struct TYPE_5__ {scalar_t__ order; TYPE_1__ items; int randomizer; } ;
typedef TYPE_2__ vlc_playlist_t ;


 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;
 int randomizer_Remove (int *,int *,size_t) ;

__attribute__((used)) static void
vlc_playlist_ItemsRemoving(vlc_playlist_t *playlist, size_t index, size_t count)
{
    if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
        randomizer_Remove(&playlist->randomizer,
                          &playlist->items.data[index], count);
}
