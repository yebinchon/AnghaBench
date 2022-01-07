
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vatpic_assert_irq (int ,int) ;
 int vioapic_assert_irq (int ,int) ;
 int vm ;

int
xh_vm_isa_assert_irq(int atpic_irq, int ioapic_irq)
{
 int error;

 error = vatpic_assert_irq(vm, atpic_irq);

 if ((error == 0) && (ioapic_irq != -1)) {
  error = vioapic_assert_irq(vm, ioapic_irq);
 }

 return (error);
}
