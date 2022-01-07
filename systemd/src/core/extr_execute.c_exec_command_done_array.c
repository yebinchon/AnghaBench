
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecCommand ;


 int exec_command_done (int *) ;

void exec_command_done_array(ExecCommand *c, size_t n) {
        size_t i;

        for (i = 0; i < n; i++)
                exec_command_done(c+i);
}
