
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tq_lock_class; } ;


 int INT_MAX ;
 int MAX (int ,int) ;
 int TASKQ_DYNAMIC ;
 int TASKQ_PREPOPULATE ;
 int TQ_LOCK_DYNAMIC ;
 int boot_ncpus ;
 TYPE_1__* dynamic_taskq ;
 int init_rwsem (int *) ;
 int maxclsyspri ;
 int * system_delay_taskq ;
 int * system_taskq ;
 void* taskq_create (char*,int,int ,int ,int ,int) ;
 int taskq_destroy (int *) ;
 int taskq_tsd ;
 int tq_list_sem ;
 int tsd_create (int *,int *) ;

int
spl_taskq_init(void)
{
 init_rwsem(&tq_list_sem);
 tsd_create(&taskq_tsd, ((void*)0));

 system_taskq = taskq_create("spl_system_taskq", MAX(boot_ncpus, 64),
     maxclsyspri, boot_ncpus, INT_MAX, TASKQ_PREPOPULATE|TASKQ_DYNAMIC);
 if (system_taskq == ((void*)0))
  return (1);

 system_delay_taskq = taskq_create("spl_delay_taskq", MAX(boot_ncpus, 4),
     maxclsyspri, boot_ncpus, INT_MAX, TASKQ_PREPOPULATE|TASKQ_DYNAMIC);
 if (system_delay_taskq == ((void*)0)) {
  taskq_destroy(system_taskq);
  return (1);
 }

 dynamic_taskq = taskq_create("spl_dynamic_taskq", 1,
     maxclsyspri, boot_ncpus, INT_MAX, TASKQ_PREPOPULATE);
 if (dynamic_taskq == ((void*)0)) {
  taskq_destroy(system_taskq);
  taskq_destroy(system_delay_taskq);
  return (1);
 }






 dynamic_taskq->tq_lock_class = TQ_LOCK_DYNAMIC;

 return (0);
}
