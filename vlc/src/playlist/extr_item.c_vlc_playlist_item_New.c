
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * media; int id; int rc; } ;
typedef TYPE_1__ vlc_playlist_item_t ;
typedef int uint64_t ;
typedef int input_item_t ;


 int input_item_Hold (int *) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int) ;
 int vlc_atomic_rc_init (int *) ;

vlc_playlist_item_t *
vlc_playlist_item_New(input_item_t *media, uint64_t id)
{
    vlc_playlist_item_t *item = malloc(sizeof(*item));
    if (unlikely(!item))
        return ((void*)0);

    vlc_atomic_rc_init(&item->rc);
    item->id = id;
    item->media = media;
    input_item_Hold(media);
    return item;
}
