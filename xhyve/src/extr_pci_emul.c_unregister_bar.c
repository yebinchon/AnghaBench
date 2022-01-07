
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinst {int dummy; } ;


 int modify_bar_registration (struct pci_devinst*,int,int ) ;

__attribute__((used)) static void
unregister_bar(struct pci_devinst *pi, int idx)
{

 modify_bar_registration(pi, idx, 0);
}
