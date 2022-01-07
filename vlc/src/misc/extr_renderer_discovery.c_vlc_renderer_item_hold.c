
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rc; } ;
typedef TYPE_1__ vlc_renderer_item_t ;


 int assert (int ) ;
 int vlc_atomic_rc_inc (int *) ;

vlc_renderer_item_t *
vlc_renderer_item_hold(vlc_renderer_item_t *p_item)
{
    assert(p_item != ((void*)0));

    vlc_atomic_rc_inc(&p_item->rc);
    return p_item;
}
