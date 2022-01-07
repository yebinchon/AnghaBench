
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {int pic_opaque; int opaque; int (* display ) (int ,int ) ;} ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int picture_t ;


 int VLC_UNUSED (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void Display(vout_display_t *vd, picture_t *pic)
{
    vout_display_sys_t *sys = vd->sys;
    VLC_UNUSED(pic);

    if (sys->display != ((void*)0))
        sys->display(sys->opaque, sys->pic_opaque);
}
