
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int p_window; } ;
typedef TYPE_2__ vout_display_sys_t ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_8__ {TYPE_2__* p_vd_sys; } ;
struct TYPE_11__ {TYPE_1__ sw; } ;
typedef TYPE_4__ picture_sys_t ;


 int AndroidWindow_UnlockPicture (TYPE_2__*,int ,TYPE_3__*) ;

__attribute__((used)) static void PoolUnlockPicture(picture_t *p_pic)
{
    picture_sys_t *p_picsys = p_pic->p_sys;
    vout_display_sys_t *sys = p_picsys->sw.p_vd_sys;

    AndroidWindow_UnlockPicture(sys, sys->p_window, p_pic);
}
