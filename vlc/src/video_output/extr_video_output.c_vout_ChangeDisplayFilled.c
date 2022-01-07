
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_5__ {int is_display_filled; } ;
struct TYPE_7__ {int display_lock; int * display; int window_lock; TYPE_1__ display_cfg; int dummy; } ;
typedef TYPE_3__ vout_thread_sys_t ;


 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_SetDisplayFilled (int *,int) ;

void vout_ChangeDisplayFilled(vout_thread_t *vout, bool is_filled)
{
    vout_thread_sys_t *sys = vout->p;
    assert(!sys->dummy);

    vlc_mutex_lock(&sys->window_lock);
    sys->display_cfg.is_display_filled = is_filled;


    vlc_mutex_lock(&sys->display_lock);
    vlc_mutex_unlock(&sys->window_lock);

    if (sys->display != ((void*)0))
        vout_SetDisplayFilled(sys->display, is_filled);
    vlc_mutex_unlock(&sys->display_lock);
}
