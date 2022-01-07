
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pci_devinst {int dummy; } ;
struct msicap {int dummy; } ;
typedef int msicap ;


 int pci_emul_add_capability (struct pci_devinst*,int *,int) ;
 int pci_populate_msicap (struct msicap*,int,int ) ;

int
pci_emul_add_msicap(struct pci_devinst *pi, int msgnum)
{
 struct msicap msicap;

 pci_populate_msicap(&msicap, msgnum, 0);

 return (pci_emul_add_capability(pi, (u_char *)&msicap, sizeof(msicap)));
}
