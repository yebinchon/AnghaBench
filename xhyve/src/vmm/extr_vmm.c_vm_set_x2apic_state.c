
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm {TYPE_1__* vcpu; } ;
typedef enum x2apic_state { ____Placeholder_x2apic_state } x2apic_state ;
struct TYPE_2__ {int x2apic_state; } ;


 int EINVAL ;
 int VM_MAXCPU ;
 int X2APIC_STATE_LAST ;
 int vlapic_set_x2apic_state (struct vm*,int,int) ;

int
vm_set_x2apic_state(struct vm *vm, int vcpuid, enum x2apic_state state)
{
 if (vcpuid < 0 || vcpuid >= VM_MAXCPU)
  return (EINVAL);

 if (state >= X2APIC_STATE_LAST)
  return (EINVAL);

 vm->vcpu[vcpuid].x2apic_state = state;

 vlapic_set_x2apic_state(vm, vcpuid, state);

 return (0);
}
