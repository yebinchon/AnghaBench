
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct pci_devinst {TYPE_1__ pi_msi; } ;



int
pci_msi_enabled(struct pci_devinst *pi)
{
 return (pi->pi_msi.enabled);
}
