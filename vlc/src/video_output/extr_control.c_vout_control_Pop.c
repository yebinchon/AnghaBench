
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i_size; } ;
struct TYPE_5__ {int can_sleep; int is_waiting; int lock; TYPE_3__ cmd; int wait_available; scalar_t__ is_held; int wait_request; } ;
typedef TYPE_1__ vout_control_t ;
typedef int vout_control_cmd_t ;
typedef scalar_t__ vlc_tick_t ;


 int ARRAY_REMOVE (TYPE_3__,int ) ;
 int ARRAY_VAL (TYPE_3__,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int mutex_cleanup_push (int *) ;
 int vlc_cleanup_pop () ;
 int vlc_cond_signal (int *) ;
 int vlc_cond_timedwait (int *,int *,scalar_t__) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int vout_control_Pop(vout_control_t *ctrl, vout_control_cmd_t *cmd,
                     vlc_tick_t deadline)
{
    vlc_mutex_lock(&ctrl->lock);
    mutex_cleanup_push(&ctrl->lock);

    if (ctrl->cmd.i_size <= 0) {

        if (deadline != VLC_TICK_INVALID && ctrl->can_sleep) {
            ctrl->is_waiting = 1;
            vlc_cond_signal(&ctrl->wait_available);
            vlc_cond_timedwait(&ctrl->wait_request, &ctrl->lock, deadline);
            ctrl->is_waiting = 0;
        }
    }

    while (ctrl->is_held)
        vlc_cond_wait(&ctrl->wait_available, &ctrl->lock);
    vlc_cleanup_pop();

    bool has_cmd;
    if (ctrl->cmd.i_size > 0) {
        has_cmd = 1;
        *cmd = ARRAY_VAL(ctrl->cmd, 0);
        ARRAY_REMOVE(ctrl->cmd, 0);
    } else {
        has_cmd = 0;
        ctrl->can_sleep = 1;
    }
    vlc_mutex_unlock(&ctrl->lock);

    return has_cmd ? VLC_SUCCESS : VLC_EGENERIC;
}
