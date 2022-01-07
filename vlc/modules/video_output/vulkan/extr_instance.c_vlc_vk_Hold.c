
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref_count; } ;
typedef TYPE_1__ vlc_vk_t ;


 int vlc_atomic_rc_inc (int *) ;

void vlc_vk_Hold(vlc_vk_t *vk)
{
    vlc_atomic_rc_inc(&vk->ref_count);
}
