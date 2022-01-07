
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_10__ {int b_displayed; scalar_t__ p_sub_pic; int p_sub_window; TYPE_1__* p_window; } ;
typedef TYPE_3__ vout_display_sys_t ;
struct TYPE_11__ {int p_sys; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_8__ {scalar_t__ b_opaque; } ;


 int AndroidOpaquePicture_Release (int ,int) ;
 int AndroidWindow_UnlockPicture (TYPE_3__*,int ,scalar_t__) ;

__attribute__((used)) static void Display(vout_display_t *vd, picture_t *picture)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->p_window->b_opaque)
        AndroidOpaquePicture_Release(picture->p_sys, 1);

    if (sys->p_sub_pic)
        AndroidWindow_UnlockPicture(sys, sys->p_sub_window, sys->p_sub_pic);

    sys->b_displayed = 1;
}
