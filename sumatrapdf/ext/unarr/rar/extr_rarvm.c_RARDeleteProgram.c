
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* opcodes; } ;
typedef TYPE_1__ RARProgram ;


 int free (TYPE_1__*) ;

void RARDeleteProgram(RARProgram *prog)
{
    if (prog)
        free(prog->opcodes);
    free(prog);
}
