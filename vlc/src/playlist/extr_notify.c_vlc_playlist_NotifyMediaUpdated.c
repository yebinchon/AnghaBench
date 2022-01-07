
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_5__** data; } ;
struct TYPE_10__ {int current; TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;
typedef int ssize_t ;
typedef int input_item_t ;
struct TYPE_11__ {int * media; } ;


 int on_items_updated ;
 int vlc_playlist_AssertLocked (TYPE_2__*) ;
 int vlc_playlist_HasItemUpdatedListeners (TYPE_2__*) ;
 int vlc_playlist_IndexOfMedia (TYPE_2__*,int *) ;
 int vlc_playlist_Notify (TYPE_2__*,int ,int,TYPE_5__**,int) ;

void
vlc_playlist_NotifyMediaUpdated(vlc_playlist_t *playlist, input_item_t *media)
{
    vlc_playlist_AssertLocked(playlist);
    if (!vlc_playlist_HasItemUpdatedListeners(playlist))

        return;

    ssize_t index;
    if (playlist->current != -1 &&
            playlist->items.data[playlist->current]->media == media)


        index = playlist->current;
    else
    {

        index = vlc_playlist_IndexOfMedia(playlist, media);
        if (index == -1)
            return;
    }
    vlc_playlist_Notify(playlist, on_items_updated, index,
                        &playlist->items.data[index], 1);
}
