
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int active_cpus; } ;


 scalar_t__ CPU_ISSET (unsigned int,int *) ;
 int CPU_SET_ATOMIC (unsigned int,int *) ;
 int EBUSY ;
 int EINVAL ;
 int VCPU_CTR0 (struct vm*,int,char*) ;
 int VM_MAXCPU ;

int
vm_activate_cpu(struct vm *vm, int vcpuid)
{

 if (vcpuid < 0 || vcpuid >= VM_MAXCPU)
  return (EINVAL);

 if (CPU_ISSET(((unsigned) vcpuid), &vm->active_cpus))
  return (EBUSY);

 VCPU_CTR0(vm, vcpuid, "activated");
 CPU_SET_ATOMIC(((unsigned) vcpuid), &vm->active_cpus);
 return (0);
}
