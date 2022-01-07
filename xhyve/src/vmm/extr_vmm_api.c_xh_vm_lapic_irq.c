
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lapic_intr_edge (int ,int,int) ;
 int vm ;

int
xh_vm_lapic_irq(int vcpu, int vector)
{
 return (lapic_intr_edge(vm, vcpu, vector));
}
