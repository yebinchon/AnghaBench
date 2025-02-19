
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct pci_devinst {TYPE_1__* pi_bar; } ;
typedef enum pcibar_type { ____Placeholder_pcibar_type } pcibar_type ;
struct TYPE_2__ {int type; int addr; int size; } ;







 int PCIM_BAR_IO_BASE ;
 int PCIM_BAR_IO_SPACE ;
 int PCIM_BAR_MEM_32 ;
 int PCIM_BAR_MEM_64 ;
 int PCIM_BAR_MEM_BASE ;
 int PCIM_BAR_MEM_PREFETCH ;
 int PCIM_BAR_MEM_SPACE ;
 int PCIR_BAR (int) ;
 int PCI_BARMAX ;
 int PCI_EMUL_IOLIMIT ;
 int PCI_EMUL_MEMLIMIT32 ;
 int PCI_EMUL_MEMLIMIT64 ;
 int assert (int) ;
 unsigned long flsl (long) ;
 int pci_emul_alloc_resource (int*,int,int,int*) ;
 int pci_emul_iobase ;
 int pci_emul_membase32 ;
 int pci_emul_membase64 ;
 int pci_set_cfgdata32 (struct pci_devinst*,int ,int) ;
 int printf (char*,int) ;
 int register_bar (struct pci_devinst*,int) ;

int
pci_emul_alloc_pbar(struct pci_devinst *pdi, int idx, uint64_t hostbase,
      enum pcibar_type type, uint64_t size)
{
 int error;
 uint64_t *baseptr, limit, addr, mask, lobits, bar;

 assert(idx >= 0 && idx <= PCI_BARMAX);

 addr = 0;
 limit = 0;

 if ((size & (size - 1)) != 0)
  size = 1UL << flsl((long) size);


 if (type == 132) {
  if (size < 4)
   size = 4;
 } else {
  if (size < 16)
   size = 16;
 }

 switch (type) {
 case 128:
  baseptr = ((void*)0);
  addr = mask = lobits = 0;
  break;
 case 132:
  baseptr = &pci_emul_iobase;
  limit = PCI_EMUL_IOLIMIT;
  mask = PCIM_BAR_IO_BASE;
  lobits = PCIM_BAR_IO_SPACE;
  break;
 case 130:







  if (size > 32 * 1024 * 1024) {



   if (size == 0x100000000UL)
    baseptr = &hostbase;
   else
    baseptr = &pci_emul_membase64;
   limit = PCI_EMUL_MEMLIMIT64;
   mask = PCIM_BAR_MEM_BASE;
   lobits = PCIM_BAR_MEM_SPACE | PCIM_BAR_MEM_64 |
     PCIM_BAR_MEM_PREFETCH;
   break;
  } else {
   baseptr = &pci_emul_membase32;
   limit = PCI_EMUL_MEMLIMIT32;
   mask = PCIM_BAR_MEM_BASE;
   lobits = PCIM_BAR_MEM_SPACE | PCIM_BAR_MEM_64;
  }
  break;
 case 131:
  baseptr = &pci_emul_membase32;
  limit = PCI_EMUL_MEMLIMIT32;
  mask = PCIM_BAR_MEM_BASE;
  lobits = PCIM_BAR_MEM_SPACE | PCIM_BAR_MEM_32;
  break;
 case 129:
  printf("pci_emul_alloc_base: invalid bar type %d\n", type);
  assert(0);
 }

 if (baseptr != ((void*)0)) {
  error = pci_emul_alloc_resource(baseptr, limit, size, &addr);
  if (error != 0)
   return (error);
 }

 pdi->pi_bar[idx].type = type;
 pdi->pi_bar[idx].addr = addr;
 pdi->pi_bar[idx].size = size;


 bar = (addr & mask) | lobits;
 pci_set_cfgdata32(pdi, PCIR_BAR(idx), ((uint32_t) bar));

 if (type == 130) {
  assert(idx + 1 <= PCI_BARMAX);
  pdi->pi_bar[idx + 1].type = 129;
  pci_set_cfgdata32(pdi, PCIR_BAR(idx + 1), bar >> 32);
 }

 register_bar(pdi, idx);

 return (0);
}
