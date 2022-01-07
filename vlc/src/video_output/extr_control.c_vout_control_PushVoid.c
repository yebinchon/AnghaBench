
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_control_t ;
typedef int vout_control_cmd_t ;


 int vout_control_Push (int *,int *) ;
 int vout_control_cmd_Init (int *,int) ;

void vout_control_PushVoid(vout_control_t *ctrl, int type)
{
    vout_control_cmd_t cmd;

    vout_control_cmd_Init(&cmd, type);
    vout_control_Push(ctrl, &cmd);
}
