
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_pins ;
 scalar_t__ xh_vm_ioapic_pincount (int*) ;

void
ioapic_init(void)
{

 if (xh_vm_ioapic_pincount(&pci_pins) < 0) {
  pci_pins = 0;
  return;
 }


 if (pci_pins <= 16) {
  pci_pins = 0;
  return;
 }
 pci_pins -= 16;
}
