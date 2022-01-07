
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_7__ {TYPE_1__* vk; } ;
typedef TYPE_3__ vout_display_sys_t ;
typedef int picture_t ;
struct TYPE_5__ {int swapchain; } ;


 int VLC_UNUSED (int *) ;
 int pl_swapchain_swap_buffers (int ) ;

__attribute__((used)) static void PictureDisplay(vout_display_t *vd, picture_t *pic)
{
    VLC_UNUSED(pic);
    vout_display_sys_t *sys = vd->sys;
    pl_swapchain_swap_buffers(sys->vk->swapchain);
}
