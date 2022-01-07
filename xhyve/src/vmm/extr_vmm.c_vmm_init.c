
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMM_INIT () ;
 int * ops ;
 int vmm_host_state_init () ;
 int vmm_initialized ;
 int vmm_mem_init () ;
 int vmm_ops_intel ;

int
vmm_init(void)
{
 int error;

 vmm_host_state_init();

 error = vmm_mem_init();
 if (error)
  return (error);

 ops = &vmm_ops_intel;

 error = VMM_INIT();

 if (error == 0)
  vmm_initialized = 1;

 return (error);
}
