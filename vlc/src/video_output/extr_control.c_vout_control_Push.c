
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int wait_request; int cmd; int is_dead; } ;
typedef TYPE_1__ vout_control_t ;
typedef int vout_control_cmd_t ;


 int ARRAY_APPEND (int ,int ) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_control_cmd_Clean (int *) ;

void vout_control_Push(vout_control_t *ctrl, vout_control_cmd_t *cmd)
{
    vlc_mutex_lock(&ctrl->lock);
    if (!ctrl->is_dead) {
        ARRAY_APPEND(ctrl->cmd, *cmd);
        vlc_cond_signal(&ctrl->wait_request);
    } else {
        vout_control_cmd_Clean(cmd);
    }
    vlc_mutex_unlock(&ctrl->lock);
}
