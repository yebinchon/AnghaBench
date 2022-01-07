
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_held; int lock; int wait_available; int is_waiting; } ;
typedef TYPE_1__ vout_control_t ;


 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vout_control_Hold(vout_control_t *ctrl)
{
    vlc_mutex_lock(&ctrl->lock);
    while (ctrl->is_held || !ctrl->is_waiting)
        vlc_cond_wait(&ctrl->wait_available, &ctrl->lock);
    ctrl->is_held = 1;
    vlc_mutex_unlock(&ctrl->lock);
}
