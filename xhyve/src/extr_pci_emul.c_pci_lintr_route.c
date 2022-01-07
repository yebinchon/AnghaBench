
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int pin; scalar_t__ ioapic_irq; scalar_t__ pirq_pin; } ;
struct pci_devinst {size_t pi_bus; size_t pi_slot; TYPE_2__ pi_lintr; } ;
struct intxinfo {scalar_t__ ii_ioapic_irq; scalar_t__ ii_pirq_pin; } ;
struct businfo {TYPE_1__* slotinfo; } ;
struct TYPE_3__ {struct intxinfo* si_intpins; } ;


 int PCIR_INTLINE ;
 int assert (int) ;
 scalar_t__ ioapic_pci_alloc_irq (struct pci_devinst*) ;
 struct businfo** pci_businfo ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;
 scalar_t__ pirq_alloc_pin (struct pci_devinst*) ;
 scalar_t__ pirq_irq (scalar_t__) ;

__attribute__((used)) static void
pci_lintr_route(struct pci_devinst *pi)
{
 struct businfo *bi;
 struct intxinfo *ii;

 if (pi->pi_lintr.pin == 0)
  return;

 bi = pci_businfo[pi->pi_bus];
 assert(bi != ((void*)0));
 ii = &bi->slotinfo[pi->pi_slot].si_intpins[pi->pi_lintr.pin - 1];





 if (ii->ii_ioapic_irq == 0)
  ii->ii_ioapic_irq = ioapic_pci_alloc_irq(pi);
 assert(ii->ii_ioapic_irq > 0);





 if (ii->ii_pirq_pin == 0)
  ii->ii_pirq_pin = pirq_alloc_pin(pi);
 assert(ii->ii_pirq_pin > 0);

 pi->pi_lintr.ioapic_irq = ii->ii_ioapic_irq;
 pi->pi_lintr.pirq_pin = ii->ii_pirq_pin;
 pci_set_cfgdata8(pi, PCIR_INTLINE, ((uint8_t) pirq_irq(ii->ii_pirq_pin)));
}
