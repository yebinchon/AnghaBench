
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; TYPE_3__* p_overlay; } ;
typedef TYPE_1__ bluray_spu_updater_sys_t ;
struct TYPE_5__ {int lock; } ;


 int assert (TYPE_3__*) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void updater_unlock_overlay(bluray_spu_updater_sys_t *p_upd_sys)
{
    assert (p_upd_sys->p_overlay);

    vlc_mutex_unlock(&p_upd_sys->p_overlay->lock);
    vlc_mutex_unlock(&p_upd_sys->lock);
}
