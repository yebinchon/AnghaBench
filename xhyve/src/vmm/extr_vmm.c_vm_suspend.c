
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vm {int active_cpus; int suspend; } ;
typedef enum vm_suspend_how { ____Placeholder_vm_suspend_how } vm_suspend_how ;


 scalar_t__ CPU_ISSET (unsigned int,int *) ;
 int EALREADY ;
 int EINVAL ;
 int VM_CTR1 (struct vm*,char*,int) ;
 int VM_CTR2 (struct vm*,char*,int ,int) ;
 int VM_MAXCPU ;
 int VM_SUSPEND_LAST ;
 int VM_SUSPEND_NONE ;
 scalar_t__ atomic_cmpset_int (int volatile*,int ,int) ;
 int vcpu_notify_event (struct vm*,int,int) ;

int
vm_suspend(struct vm *vm, enum vm_suspend_how how)
{
 int i;

 if (how <= VM_SUSPEND_NONE || how >= VM_SUSPEND_LAST)
  return (EINVAL);

 if (atomic_cmpset_int(((volatile u_int *) &vm->suspend), 0, how) == 0) {
  VM_CTR2(vm, "virtual machine already suspended %d/%d",
      vm->suspend, how);
  return (EALREADY);
 }

 VM_CTR1(vm, "virtual machine successfully suspended %d", how);




 for (i = 0; i < VM_MAXCPU; i++) {
  if (CPU_ISSET(((unsigned) i), &vm->active_cpus))
   vcpu_notify_event(vm, i, 0);
 }

 return (0);
}
