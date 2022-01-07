
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ msg_data; int addr; } ;
struct pci_devinst {TYPE_1__ pi_msi; } ;


 scalar_t__ pci_msi_enabled (struct pci_devinst*) ;
 int pci_msi_maxmsgnum (struct pci_devinst*) ;
 int xh_vm_lapic_msi (int ,scalar_t__) ;

void
pci_generate_msi(struct pci_devinst *pi, int index)
{

 if (pci_msi_enabled(pi) && index < pci_msi_maxmsgnum(pi)) {
  xh_vm_lapic_msi(pi->pi_msi.addr, pi->pi_msi.msg_data +
   ((uint64_t) index));
 }
}
