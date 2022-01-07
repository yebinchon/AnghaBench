
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct pci_devinst {TYPE_1__* pi_bar; struct pci_devemu* pi_d; } ;
struct pci_devemu {int (* pe_barwrite ) (int,struct pci_devinst*,int,scalar_t__,int,scalar_t__) ;scalar_t__ (* pe_barread ) (int,struct pci_devinst*,int,scalar_t__,int) ;} ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ addr; scalar_t__ size; } ;


 scalar_t__ PCIBAR_IO ;
 int PCI_BARMAX ;
 scalar_t__ stub1 (int,struct pci_devinst*,int,scalar_t__,int) ;
 int stub2 (int,struct pci_devinst*,int,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static int
pci_emul_io_handler(int vcpu, int in, int port, int bytes, uint32_t *eax,
 void *arg)
{
 struct pci_devinst *pdi = arg;
 struct pci_devemu *pe = pdi->pi_d;
 uint64_t offset;
 int i;

 for (i = 0; i <= PCI_BARMAX; i++) {
  if ((pdi->pi_bar[i].type == PCIBAR_IO) &&
      (((uint64_t) port) >= pdi->pi_bar[i].addr) &&
      (((uint64_t) (port + bytes)) <=
       (pdi->pi_bar[i].addr + pdi->pi_bar[i].size)))
  {
   offset = ((uint64_t) port) - pdi->pi_bar[i].addr;
   if (in)
    *eax = (uint32_t) (*pe->pe_barread)(vcpu, pdi, i, offset,
     bytes);
   else
    (*pe->pe_barwrite)(vcpu, pdi, i, offset, bytes, *eax);
   return (0);
  }
 }
 return (-1);
}
