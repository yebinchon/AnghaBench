
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxmsgnum; scalar_t__ enabled; } ;
struct pci_devinst {TYPE_1__ pi_msi; } ;



__attribute__((used)) static int
pci_msi_maxmsgnum(struct pci_devinst *pi)
{
 if (pi->pi_msi.enabled)
  return (pi->pi_msi.maxmsgnum);
 else
  return (0);
}
