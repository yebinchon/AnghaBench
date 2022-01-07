
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint8_t ;
typedef TYPE_1__* int_entry_ptr ;
struct TYPE_5__ {int src_bus_id; int src_bus_irq; int int_flags; void* int_type; void* dst_apic_int; void* dst_apic_id; int type; } ;


 int INTENTRY_FLAGS_POLARITY_ACTIVELO ;
 int INTENTRY_FLAGS_TRIGGER_LEVEL ;
 void* INTENTRY_TYPE_EXTINT ;
 void* INTENTRY_TYPE_INT ;
 int MPCT_ENTRY_INT ;
 int PCI_BUSMAX ;

 int memset (TYPE_1__*,int ,int) ;
 int mpt_generate_pci_int ;
 int pci_walk_lintr (int,int ,TYPE_1__**) ;

__attribute__((used)) static void
mpt_build_ioint_entries(int_entry_ptr mpie, int id)
{
 int pin, bus;
 for (pin = 0; pin < 16; pin++) {
  memset(mpie, 0, sizeof(*mpie));
  mpie->type = MPCT_ENTRY_INT;
  mpie->src_bus_id = 1;
  mpie->dst_apic_id = (uint8_t) id;





  mpie->dst_apic_int = (uint8_t) pin;
  switch (pin) {
  case 0:

   mpie->int_type = INTENTRY_TYPE_EXTINT;
   break;
  case 2:

   mpie->int_type = INTENTRY_TYPE_INT;
   mpie->src_bus_irq = 0;
   break;
  case 128:

   mpie->int_flags = INTENTRY_FLAGS_POLARITY_ACTIVELO |
       INTENTRY_FLAGS_TRIGGER_LEVEL;
   mpie->int_type = INTENTRY_TYPE_INT;
   mpie->src_bus_irq = 128;
   break;
  default:

   mpie->int_type = INTENTRY_TYPE_INT;
   mpie->src_bus_irq = (uint8_t) pin;
   break;
  }
  mpie++;
 }


 for (bus = 0; bus <= PCI_BUSMAX; bus++)
  pci_walk_lintr(bus, mpt_generate_pci_int, &mpie);
}
