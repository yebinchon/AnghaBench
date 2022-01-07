
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct pci_devinst {TYPE_1__* pi_bar; } ;
struct TYPE_2__ {scalar_t__ type; int addr; } ;






 int assert (int ) ;
 int memen (struct pci_devinst*) ;
 int porten (struct pci_devinst*) ;
 int register_bar (struct pci_devinst*,int) ;
 int unregister_bar (struct pci_devinst*,int) ;

__attribute__((used)) static void
update_bar_address(struct pci_devinst *pi, uint64_t addr, int idx, int type)
{
 int decode;

 if (pi->pi_bar[idx].type == 131)
  decode = porten(pi);
 else
  decode = memen(pi);

 if (decode)
  unregister_bar(pi, idx);

 switch (type) {
 case 131:
 case 130:
  pi->pi_bar[idx].addr = addr;
  break;
 case 129:
  pi->pi_bar[idx].addr &= ~0xffffffffUL;
  pi->pi_bar[idx].addr |= addr;
  break;
 case 128:
  pi->pi_bar[idx].addr &= 0xffffffff;
  pi->pi_bar[idx].addr |= addr;
  break;
 default:
  assert(0);
 }

 if (decode)
  register_bar(pi, idx);
}
