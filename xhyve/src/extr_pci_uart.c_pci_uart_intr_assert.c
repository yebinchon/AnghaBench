
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinst {int dummy; } ;


 int pci_lintr_assert (struct pci_devinst*) ;

__attribute__((used)) static void
pci_uart_intr_assert(void *arg)
{
 struct pci_devinst *pi = arg;

 pci_lintr_assert(pi);
}
