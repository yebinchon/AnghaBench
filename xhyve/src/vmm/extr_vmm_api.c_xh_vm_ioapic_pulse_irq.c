
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vioapic_pulse_irq (int ,int) ;
 int vm ;

int
xh_vm_ioapic_pulse_irq(int irq)
{
 return (vioapic_pulse_irq(vm, irq));
}
