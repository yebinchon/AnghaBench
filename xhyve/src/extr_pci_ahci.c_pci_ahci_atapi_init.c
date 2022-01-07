
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinst {int dummy; } ;


 int pci_ahci_init (struct pci_devinst*,char*,int) ;

__attribute__((used)) static int
pci_ahci_atapi_init(struct pci_devinst *pi, char *opts)
{
 return (pci_ahci_init(pi, opts, 1));
}
