
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_control_t ;
struct TYPE_4__ {int boolean; } ;
typedef TYPE_1__ vout_control_cmd_t ;


 int vout_control_Push (int *,TYPE_1__*) ;
 int vout_control_cmd_Init (TYPE_1__*,int) ;

void vout_control_PushBool(vout_control_t *ctrl, int type, bool boolean)
{
    vout_control_cmd_t cmd;

    vout_control_cmd_Init(&cmd, type);
    cmd.boolean = boolean;
    vout_control_Push(ctrl, &cmd);
}
