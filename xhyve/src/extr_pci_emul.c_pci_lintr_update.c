
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; int lock; } ;
struct pci_devinst {TYPE_1__ pi_lintr; } ;


 scalar_t__ ASSERTED ;
 scalar_t__ PENDING ;
 int pci_irq_assert (struct pci_devinst*) ;
 int pci_irq_deassert (struct pci_devinst*) ;
 scalar_t__ pci_lintr_permitted (struct pci_devinst*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
pci_lintr_update(struct pci_devinst *pi)
{

 pthread_mutex_lock(&pi->pi_lintr.lock);
 if (pi->pi_lintr.state == ASSERTED && !pci_lintr_permitted(pi)) {
  pci_irq_deassert(pi);
  pi->pi_lintr.state = PENDING;
 } else if (pi->pi_lintr.state == PENDING && pci_lintr_permitted(pi)) {
  pi->pi_lintr.state = ASSERTED;
  pci_irq_assert(pi);
 }
 pthread_mutex_unlock(&pi->pi_lintr.lock);
}
