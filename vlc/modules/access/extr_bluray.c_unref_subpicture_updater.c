
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref_cnt; int lock; int * p_overlay; } ;
typedef TYPE_1__ bluray_spu_updater_sys_t ;


 int free (TYPE_1__*) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void unref_subpicture_updater(bluray_spu_updater_sys_t *p_sys)
{
    vlc_mutex_lock(&p_sys->lock);
    int refs = --p_sys->ref_cnt;
    p_sys->p_overlay = ((void*)0);
    vlc_mutex_unlock(&p_sys->lock);

    if (refs < 1) {
        vlc_mutex_destroy(&p_sys->lock);
        free(p_sys);
    }
}
