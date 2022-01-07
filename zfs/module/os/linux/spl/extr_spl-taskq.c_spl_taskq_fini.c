
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dynamic_taskq ;
 int * system_delay_taskq ;
 int * system_taskq ;
 int taskq_destroy (int *) ;
 int taskq_tsd ;
 int tsd_destroy (int *) ;

void
spl_taskq_fini(void)
{
 taskq_destroy(dynamic_taskq);
 dynamic_taskq = ((void*)0);

 taskq_destroy(system_delay_taskq);
 system_delay_taskq = ((void*)0);

 taskq_destroy(system_taskq);
 system_taskq = ((void*)0);

 tsd_destroy(&taskq_tsd);
}
