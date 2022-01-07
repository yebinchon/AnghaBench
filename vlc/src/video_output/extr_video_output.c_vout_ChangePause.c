
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* p; } ;
typedef TYPE_5__ vout_thread_t ;
typedef int vlc_tick_t ;
struct TYPE_10__ {int window; } ;
struct TYPE_9__ {int is_on; int date; } ;
struct TYPE_8__ {void* last; void* timestamp; } ;
struct TYPE_11__ {int display; int window_lock; TYPE_3__ display_cfg; int control; TYPE_2__ pause; TYPE_1__ step; int dummy; } ;


 int ThreadFilterFlush (TYPE_5__*,int) ;
 void* VLC_TICK_INVALID ;
 int assert (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_control_Hold (int *) ;
 int vout_control_Release (int *) ;
 int vout_window_SetInhibition (int ,int) ;

void vout_ChangePause(vout_thread_t *vout, bool is_paused, vlc_tick_t date)
{
    assert(!vout->p->dummy);
    assert(vout->p->display);

    vout_control_Hold(&vout->p->control);
    assert(!vout->p->pause.is_on || !is_paused);

    if (vout->p->pause.is_on)
        ThreadFilterFlush(vout, 0);
    else {
        vout->p->step.timestamp = VLC_TICK_INVALID;
        vout->p->step.last = VLC_TICK_INVALID;
    }
    vout->p->pause.is_on = is_paused;
    vout->p->pause.date = date;
    vout_control_Release(&vout->p->control);

    vlc_mutex_lock(&vout->p->window_lock);
    vout_window_SetInhibition(vout->p->display_cfg.window, !is_paused);
    vlc_mutex_unlock(&vout->p->window_lock);
}
