
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; TYPE_2__* p_overlay; } ;
typedef TYPE_1__ bluray_spu_updater_sys_t ;
struct TYPE_6__ {int lock; } ;
typedef TYPE_2__ bluray_overlay_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static bluray_overlay_t *updater_lock_overlay(bluray_spu_updater_sys_t *p_upd_sys)
{

    vlc_mutex_lock(&p_upd_sys->lock);

    bluray_overlay_t *ov = p_upd_sys->p_overlay;
    if (ov) {

        vlc_mutex_lock(&ov->lock);
        return ov;
    }


    vlc_mutex_unlock(&p_upd_sys->lock);
    return ((void*)0);
}
