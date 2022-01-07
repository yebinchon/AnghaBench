
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct pci_devinst {int dummy; } ;


 int CAP_START_OFFSET ;



 int assert (int) ;
 int msicap_cfgwrite (struct pci_devinst*,int,int,int,int) ;
 int msixcap_cfgwrite (struct pci_devinst*,int,int,int,int) ;
 int pci_get_cfgdata8 (struct pci_devinst*,int) ;
 int pciecap_cfgwrite (struct pci_devinst*,int,int,int,int) ;

__attribute__((used)) static void
pci_emul_capwrite(struct pci_devinst *pi, int offset, int bytes, uint32_t val)
{
 int capid;
 uint8_t capoff, nextoff;


 if ((offset & (bytes - 1)) != 0)
  return;


 capoff = CAP_START_OFFSET;
 while (1) {
  nextoff = pci_get_cfgdata8(pi, capoff + 1);
  if (nextoff == 0)
   break;
  if (offset >= capoff && offset < nextoff)
   break;

  capoff = nextoff;
 }
 assert(offset >= capoff);







 if (offset == capoff || offset == capoff + 1) {
  if (offset == capoff && bytes == 4) {
   bytes = 2;
   offset += 2;
   val >>= 16;
  } else
   return;
 }

 capid = pci_get_cfgdata8(pi, capoff);
 switch (capid) {
 case 129:
  msicap_cfgwrite(pi, capoff, offset, bytes, val);
  break;
 case 128:
  msixcap_cfgwrite(pi, capoff, offset, bytes, val);
  break;
 case 130:
  pciecap_cfgwrite(pi, capoff, offset, bytes, val);
  break;
 default:
  break;
 }
}
