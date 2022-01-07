
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_held; int is_waiting; int is_dead; int can_sleep; int cmd; int wait_available; int wait_request; int lock; } ;
typedef TYPE_1__ vout_control_t ;


 int ARRAY_INIT (int ) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

void vout_control_Init(vout_control_t *ctrl)
{
    vlc_mutex_init(&ctrl->lock);
    vlc_cond_init(&ctrl->wait_request);
    vlc_cond_init(&ctrl->wait_available);

    ctrl->is_held = 0;
    ctrl->is_waiting = 0;
    ctrl->is_dead = 0;
    ctrl->can_sleep = 1;
    ARRAY_INIT(ctrl->cmd);
}
