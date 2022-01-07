
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {struct vcpu* vcpu; } ;
struct vcpu {int extint_pending; } ;


 int VM_MAXCPU ;
 int xhyve_abort (char*,int) ;

int
vm_extint_pending(struct vm *vm, int vcpuid)
{
 struct vcpu *vcpu;

 if (vcpuid < 0 || vcpuid >= VM_MAXCPU)
  xhyve_abort("vm_extint_pending: invalid vcpuid %d\n", vcpuid);

 vcpu = &vm->vcpu[vcpuid];

 return (vcpu->extint_pending);
}
