
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int active_cpus; int suspended_cpus; } ;


 scalar_t__ CPU_CMP (int *,int *) ;
 int EBUSY ;
 int vm_cleanup (struct vm*,int) ;
 int vm_init (struct vm*,int) ;

int
vm_reinit(struct vm *vm)
{
 int error;




 if (CPU_CMP(&vm->suspended_cpus, &vm->active_cpus) == 0) {
  vm_cleanup(vm, 0);
  vm_init(vm, 0);
  error = 0;
 } else {
  error = EBUSY;
 }

 return (error);
}
