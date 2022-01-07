
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pci_devinst {TYPE_1__* pi_bar; } ;
struct TYPE_2__ {int type; } ;


 int CFGREAD (struct pci_devinst*,int,int) ;
 int CFGWRITE (struct pci_devinst*,int,int,int) ;





 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 int PCI_BARMAX ;
 int memen (struct pci_devinst*) ;
 int pci_get_cfgdata16 (struct pci_devinst*,int ) ;
 int pci_lintr_update (struct pci_devinst*) ;
 int porten (struct pci_devinst*) ;
 int register_bar (struct pci_devinst*,int) ;
 int unregister_bar (struct pci_devinst*,int) ;

__attribute__((used)) static void
pci_emul_cmdsts_write(struct pci_devinst *pi, int coff, uint32_t new, int bytes)
{
 int i, rshift;
 uint32_t cmd, cmd2, changed, old, readonly;

 cmd = pci_get_cfgdata16(pi, PCIR_COMMAND);
 rshift = (coff & 0x3) * 8;
 readonly = 0xFFFFF880 >> rshift;

 old = CFGREAD(pi, coff, bytes);
 new &= ~readonly;
 new |= (old & readonly);
 CFGWRITE(pi, coff, new, bytes);

 cmd2 = pci_get_cfgdata16(pi, PCIR_COMMAND);
 changed = cmd ^ cmd2;





 for (i = 0; i <= PCI_BARMAX; i++) {
  switch (pi->pi_bar[i].type) {
   case 128:
   case 129:
    break;
   case 132:

    if (changed & PCIM_CMD_PORTEN) {
     if (porten(pi))
      register_bar(pi, i);
     else
      unregister_bar(pi, i);
    }
    break;
   case 131:
   case 130:

    if (changed & PCIM_CMD_MEMEN) {
     if (memen(pi))
      register_bar(pi, i);
     else
      unregister_bar(pi, i);
    }
    break;
  }
 }





 pci_lintr_update(pi);
}
