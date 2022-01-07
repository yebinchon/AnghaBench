
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_devinst {int dummy; } ;


 int pci_get_cfgdata16 (struct pci_devinst*,int) ;
 int pci_get_cfgdata32 (struct pci_devinst*,int) ;
 int pci_get_cfgdata8 (struct pci_devinst*,int) ;

__attribute__((used)) static __inline uint32_t
CFGREAD(struct pci_devinst *pi, int coff, int bytes)
{

 if (bytes == 1)
  return (pci_get_cfgdata8(pi, coff));
 else if (bytes == 2)
  return (pci_get_cfgdata16(pi, coff));
 else
  return (pci_get_cfgdata32(pi, coff));
}
