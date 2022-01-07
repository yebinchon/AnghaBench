
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMM_CLEANUP () ;
 scalar_t__ vmm_initialized ;

int
vmm_cleanup(void) {
 int error;

 error = VMM_CLEANUP();

 if (error == 0)
  vmm_initialized = 0;

 return error;
}
