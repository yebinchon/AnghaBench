
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vm_intr_trigger { ____Placeholder_vm_intr_trigger } vm_intr_trigger ;


 int vatpic_set_irq_trigger (int ,int,int) ;
 int vm ;

int
xh_vm_isa_set_irq_trigger(int atpic_irq, enum vm_intr_trigger trigger)
{
 return (vatpic_set_irq_trigger(vm, atpic_irq, trigger));
}
