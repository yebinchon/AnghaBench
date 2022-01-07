
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int exec_status; } ;
typedef TYPE_1__ ExecCommand ;


 int exec_status_reset (int *) ;

void exec_command_reset_status_array(ExecCommand *c, size_t n) {
        size_t i;

        for (i = 0; i < n; i++)
                exec_status_reset(&c[i].exec_status);
}
