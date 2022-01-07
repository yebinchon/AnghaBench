
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_dead; int lock; } ;
typedef TYPE_1__ vout_control_t ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vout_control_Dead(vout_control_t *ctrl)
{
    vlc_mutex_lock(&ctrl->lock);
    ctrl->is_dead = 1;
    vlc_mutex_unlock(&ctrl->lock);
}
