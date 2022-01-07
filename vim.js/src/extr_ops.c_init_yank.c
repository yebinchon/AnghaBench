
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * y_array; } ;


 int NUM_REGISTERS ;
 TYPE_1__* y_regs ;

void
init_yank()
{
    int i;

    for (i = 0; i < NUM_REGISTERS; ++i)
 y_regs[i].y_array = ((void*)0);
}
