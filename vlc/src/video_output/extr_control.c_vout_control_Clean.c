
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int i_size; } ;
struct TYPE_5__ {int wait_available; int wait_request; int lock; TYPE_3__ cmd; } ;
typedef TYPE_1__ vout_control_t ;
typedef int vout_control_cmd_t ;


 int ARRAY_RESET (TYPE_3__) ;
 int ARRAY_VAL (TYPE_3__,int) ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vout_control_cmd_Clean (int *) ;

void vout_control_Clean(vout_control_t *ctrl)
{

    for (int i = 0; i < ctrl->cmd.i_size; i++) {
        vout_control_cmd_t cmd = ARRAY_VAL(ctrl->cmd, i);
        vout_control_cmd_Clean(&cmd);
    }
    ARRAY_RESET(ctrl->cmd);

    vlc_mutex_destroy(&ctrl->lock);
    vlc_cond_destroy(&ctrl->wait_request);
    vlc_cond_destroy(&ctrl->wait_available);
}
