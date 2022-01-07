
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_held; int lock; int wait_available; } ;
typedef TYPE_1__ vout_control_t ;


 int assert (int) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vout_control_Release(vout_control_t *ctrl)
{
    vlc_mutex_lock(&ctrl->lock);
    assert(ctrl->is_held);
    ctrl->is_held = 0;
    vlc_cond_signal(&ctrl->wait_available);
    vlc_mutex_unlock(&ctrl->lock);
}
