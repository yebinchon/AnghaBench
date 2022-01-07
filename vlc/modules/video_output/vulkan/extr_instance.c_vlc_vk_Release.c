
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int module; int ref_count; } ;
typedef TYPE_1__ vlc_vk_t ;


 int module_unneed (TYPE_1__*,int ) ;
 int vlc_atomic_rc_dec (int *) ;
 int vlc_object_delete (TYPE_1__*) ;

void vlc_vk_Release(vlc_vk_t *vk)
{
    if (!vlc_atomic_rc_dec(&vk->ref_count))
        return;
    module_unneed(vk, vk->module);
    vlc_object_delete(vk);
}
