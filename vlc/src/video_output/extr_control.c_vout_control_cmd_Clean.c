
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int string; } ;
typedef TYPE_1__ vout_control_cmd_t ;



 int free (int ) ;

void vout_control_cmd_Clean(vout_control_cmd_t *cmd)
{
    switch (cmd->type) {
    case 128:
        free(cmd->string);
        break;
    default:
        break;
    }
}
