
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IRQ_DISABLED ;
 int assert (int) ;
 scalar_t__* irq_counts ;
 unsigned int nitems (scalar_t__*) ;
 int pirq_cold ;

void
pci_irq_use(int irq)
{
 assert((irq >= 0) && (((unsigned) irq) < nitems(irq_counts)));
 assert(pirq_cold);
 assert(irq_counts[irq] != IRQ_DISABLED);
 irq_counts[irq]++;
}
