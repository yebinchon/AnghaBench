
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * p_sys; } ;
struct TYPE_7__ {TYPE_1__ updater; } ;
typedef TYPE_2__ subpicture_t ;
typedef int bluray_spu_updater_sys_t ;
struct TYPE_8__ {int b_on_vout; int status; } ;
typedef TYPE_3__ bluray_overlay_t ;


 int ToDisplay ;
 int unref_subpicture_updater (int *) ;
 TYPE_3__* updater_lock_overlay (int *) ;
 int updater_unlock_overlay (int *) ;

__attribute__((used)) static void subpictureUpdaterDestroy(subpicture_t *p_subpic)
{
    bluray_spu_updater_sys_t *p_upd_sys = p_subpic->updater.p_sys;
    bluray_overlay_t *p_overlay = updater_lock_overlay(p_upd_sys);

    if (p_overlay) {

        p_overlay->status = ToDisplay;
        p_overlay->b_on_vout = 0;
        updater_unlock_overlay(p_upd_sys);
    }

    unref_subpicture_updater(p_upd_sys);
}
