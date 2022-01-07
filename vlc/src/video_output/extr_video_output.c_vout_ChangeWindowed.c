
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* p; } ;
typedef TYPE_2__ vout_thread_t ;
struct TYPE_6__ {int window; } ;
struct TYPE_8__ {int window_lock; TYPE_1__ display_cfg; int dummy; } ;
typedef TYPE_3__ vout_thread_sys_t ;


 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_UpdateWindowSizeLocked (TYPE_2__*) ;
 int vout_window_UnsetFullScreen (int ) ;

void vout_ChangeWindowed(vout_thread_t *vout)
{
    assert(!vout->p->dummy);
    vlc_mutex_lock(&vout->p->window_lock);
    vout_thread_sys_t *sys = vout->p;
    vout_window_UnsetFullScreen(sys->display_cfg.window);

    vout_UpdateWindowSizeLocked(vout);
    vlc_mutex_unlock(&vout->p->window_lock);
}
