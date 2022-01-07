
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table_bar; int * table; } ;
struct pci_devinst {TYPE_1__ pi_msix; } ;



int
pci_msix_table_bar(struct pci_devinst *pi)
{

 if (pi->pi_msix.table != ((void*)0))
  return (pi->pi_msix.table_bar);
 else
  return (-1);
}
