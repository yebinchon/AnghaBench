
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
typedef size_t ssize_t ;
typedef TYPE_3__ playlist_item_vector_t ;
typedef int input_item_t ;
struct TYPE_6__ {int const* media; } ;


 int vlc_playlist_AssertLocked (TYPE_2__*) ;

ssize_t
vlc_playlist_IndexOfMedia(vlc_playlist_t *playlist, const input_item_t *media)
{
    vlc_playlist_AssertLocked(playlist);

    playlist_item_vector_t *items = &playlist->items;
    for (size_t i = 0; i < items->size; ++i)
        if (items->data[i]->media == media)
            return i;
    return -1;
}
