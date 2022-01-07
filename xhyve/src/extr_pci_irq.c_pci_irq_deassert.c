
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pirq {scalar_t__ active_count; int reg; int lock; } ;
struct TYPE_2__ {int pirq_pin; int ioapic_irq; } ;
struct pci_devinst {TYPE_1__ pi_lintr; } ;


 int PIRQ_IRQ ;
 int assert (int) ;
 unsigned int nitems (struct pirq*) ;
 scalar_t__ pirq_valid_irq (int) ;
 struct pirq* pirqs ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int xh_vm_ioapic_deassert_irq (int ) ;
 int xh_vm_isa_deassert_irq (int,int ) ;

void
pci_irq_deassert(struct pci_devinst *pi)
{
 struct pirq *pirq;

 if (pi->pi_lintr.pirq_pin > 0) {
  assert(((unsigned) pi->pi_lintr.pirq_pin) <= nitems(pirqs));
  pirq = &pirqs[pi->pi_lintr.pirq_pin - 1];
  pthread_mutex_lock(&pirq->lock);
  pirq->active_count--;
  if (pirq->active_count == 0 && pirq_valid_irq(pirq->reg)) {
   xh_vm_isa_deassert_irq(pirq->reg & PIRQ_IRQ,
    pi->pi_lintr.ioapic_irq);
   pthread_mutex_unlock(&pirq->lock);
   return;
  }
  pthread_mutex_unlock(&pirq->lock);
 }
 xh_vm_ioapic_deassert_irq(pi->pi_lintr.ioapic_irq);
}
