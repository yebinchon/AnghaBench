
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; } ;


 TYPE_1__* current ;
 int dump_stack () ;
 int printk (char*,int ) ;

void
spl_dumpstack(void)
{
 printk("Showing stack for process %d\n", current->pid);
 dump_stack();
}
