
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t size; TYPE_1__** data; } ;
struct TYPE_7__ {TYPE_3__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;
typedef scalar_t__ uint64_t ;
typedef size_t ssize_t ;
typedef TYPE_3__ playlist_item_vector_t ;
struct TYPE_6__ {scalar_t__ id; } ;


 int vlc_playlist_AssertLocked (TYPE_2__*) ;

ssize_t
vlc_playlist_IndexOfId(vlc_playlist_t *playlist, uint64_t id)
{
    vlc_playlist_AssertLocked(playlist);

    playlist_item_vector_t *items = &playlist->items;
    for (size_t i = 0; i < items->size; ++i)
        if (items->data[i]->id == id)
            return i;
    return -1;
}
