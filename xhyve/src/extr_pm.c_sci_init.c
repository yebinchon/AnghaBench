
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEVEL_TRIGGER ;
 int SCI_INT ;
 int pci_irq_use (int ) ;
 int xh_vm_isa_set_irq_trigger (int ,int ) ;

void
sci_init(void)
{




 pci_irq_use(SCI_INT);
 xh_vm_isa_set_irq_trigger(SCI_INT, LEVEL_TRIGGER);
}
