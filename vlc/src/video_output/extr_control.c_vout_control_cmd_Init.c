
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ vout_control_cmd_t ;


 int memset (TYPE_1__*,int ,int) ;

void vout_control_cmd_Init(vout_control_cmd_t *cmd, int type)
{
    memset(cmd, 0, sizeof(*cmd));
    cmd->type = type;
}
