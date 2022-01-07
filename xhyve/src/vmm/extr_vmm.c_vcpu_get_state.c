
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {struct vcpu* vcpu; } ;
struct vcpu {int state; } ;
typedef enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;


 int VM_MAXCPU ;
 int vcpu_lock (struct vcpu*) ;
 int vcpu_unlock (struct vcpu*) ;
 int xhyve_abort (char*,int) ;

enum vcpu_state
vcpu_get_state(struct vm *vm, int vcpuid)
{
 struct vcpu *vcpu;
 enum vcpu_state state;

 if (vcpuid < 0 || vcpuid >= VM_MAXCPU)
  xhyve_abort("vm_get_run_state: invalid vcpuid %d\n", vcpuid);

 vcpu = &vm->vcpu[vcpuid];

 vcpu_lock(vcpu);
 state = vcpu->state;
 vcpu_unlock(vcpu);

 return (state);
}
