
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASKQ_DYNAMIC ;
 int TASKQ_PREPOPULATE ;
 int maxclsyspri ;
 void* system_delay_taskq ;
 void* system_taskq ;
 void* taskq_create (char*,int,int ,int,int,int) ;

void
system_taskq_init(void)
{
 system_taskq = taskq_create("system_taskq", 64, maxclsyspri, 4, 512,
     TASKQ_DYNAMIC | TASKQ_PREPOPULATE);
 system_delay_taskq = taskq_create("delay_taskq", 4, maxclsyspri, 4,
     512, TASKQ_DYNAMIC | TASKQ_PREPOPULATE);
}
