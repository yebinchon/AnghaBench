
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lapic_set_local_intr (int ,int,int) ;
 int vm ;

int
xh_vm_lapic_local_irq(int vcpu, int vector)
{
 return (lapic_set_local_intr(vm, vcpu, vector));
}
