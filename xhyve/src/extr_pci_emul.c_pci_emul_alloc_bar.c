
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pci_devinst {int dummy; } ;
typedef enum pcibar_type { ____Placeholder_pcibar_type } pcibar_type ;


 int pci_emul_alloc_pbar (struct pci_devinst*,int,int ,int,int ) ;

int
pci_emul_alloc_bar(struct pci_devinst *pdi, int idx, enum pcibar_type type,
     uint64_t size)
{

 return (pci_emul_alloc_pbar(pdi, idx, 0, type, size));
}
