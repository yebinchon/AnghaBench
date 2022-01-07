
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int media; int rc; } ;
typedef TYPE_1__ vlc_playlist_item_t ;


 int free (TYPE_1__*) ;
 int input_item_Release (int ) ;
 scalar_t__ vlc_atomic_rc_dec (int *) ;

void
vlc_playlist_item_Release(vlc_playlist_item_t *item)
{
    if (vlc_atomic_rc_dec(&item->rc))
    {
        input_item_Release(item->media);
        free(item);
    }
}
