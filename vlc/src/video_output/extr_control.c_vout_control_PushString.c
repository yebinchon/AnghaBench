
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vout_control_t ;
struct TYPE_4__ {int * string; } ;
typedef TYPE_1__ vout_control_cmd_t ;


 int * strdup (char const*) ;
 int vout_control_Push (int *,TYPE_1__*) ;
 int vout_control_cmd_Init (TYPE_1__*,int) ;

void vout_control_PushString(vout_control_t *ctrl, int type, const char *string)
{
    vout_control_cmd_t cmd;

    vout_control_cmd_Init(&cmd, type);
    cmd.string = string ? strdup(string) : ((void*)0);
    vout_control_Push(ctrl, &cmd);
}
