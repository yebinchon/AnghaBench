
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {struct vcpu* vcpu; } ;
struct vcpu {int dummy; } ;
typedef enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;


 int VM_MAXCPU ;
 int vcpu_lock (struct vcpu*) ;
 int vcpu_set_state_locked (struct vcpu*,int,int) ;
 int vcpu_unlock (struct vcpu*) ;
 int xhyve_abort (char*,int) ;

int
vcpu_set_state(struct vm *vm, int vcpuid, enum vcpu_state newstate,
    bool from_idle)
{
 int error;
 struct vcpu *vcpu;

 if (vcpuid < 0 || vcpuid >= VM_MAXCPU)
  xhyve_abort("vm_set_run_state: invalid vcpuid %d\n", vcpuid);

 vcpu = &vm->vcpu[vcpuid];

 vcpu_lock(vcpu);
 error = vcpu_set_state_locked(vcpu, newstate, from_idle);
 vcpu_unlock(vcpu);
 return (error);
}
