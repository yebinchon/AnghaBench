
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p; } ;
typedef TYPE_3__ vout_thread_t ;
struct TYPE_5__ {int window; } ;
struct TYPE_6__ {int window_lock; TYPE_1__ display_cfg; int dummy; } ;


 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_window_SetState (int ,unsigned int) ;

void vout_ChangeWindowState(vout_thread_t *vout, unsigned st)
{
    assert(!vout->p->dummy);
    vlc_mutex_lock(&vout->p->window_lock);
    vout_window_SetState(vout->p->display_cfg.window, st);
    vlc_mutex_unlock(&vout->p->window_lock);
}
