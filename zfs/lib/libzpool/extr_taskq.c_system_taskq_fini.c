
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * system_delay_taskq ;
 int * system_taskq ;
 int taskq_destroy (int *) ;

void
system_taskq_fini(void)
{
 taskq_destroy(system_taskq);
 system_taskq = ((void*)0);
 taskq_destroy(system_delay_taskq);
 system_delay_taskq = ((void*)0);
}
