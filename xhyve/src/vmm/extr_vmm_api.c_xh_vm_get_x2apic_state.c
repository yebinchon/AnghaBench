
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum x2apic_state { ____Placeholder_x2apic_state } x2apic_state ;


 int vm ;
 int vm_get_x2apic_state (int ,int,int*) ;

int
xh_vm_get_x2apic_state(int vcpu, enum x2apic_state *s)
{
 return (vm_get_x2apic_state(vm, vcpu, s));
}
