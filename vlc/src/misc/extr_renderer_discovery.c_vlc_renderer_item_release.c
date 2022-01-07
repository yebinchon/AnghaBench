
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rc; } ;
typedef TYPE_1__ vlc_renderer_item_t ;


 int assert (int ) ;
 int item_free (TYPE_1__*) ;
 scalar_t__ vlc_atomic_rc_dec (int *) ;

void
vlc_renderer_item_release(vlc_renderer_item_t *p_item)
{
    assert(p_item != ((void*)0));

    if (vlc_atomic_rc_dec(&p_item->rc))
        item_free(p_item);
}
