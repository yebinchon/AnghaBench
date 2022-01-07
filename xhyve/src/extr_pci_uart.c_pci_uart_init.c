
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int dummy; } ;
struct pci_devinst {int pi_func; int pi_slot; struct uart_softc* pi_arg; } ;


 int COM_DEV ;
 int COM_VENDOR ;
 int PCIBAR_IO ;
 int PCIC_SIMPLECOMM ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_VENDOR ;
 int UART_IO_BAR_SIZE ;
 int asprintf (char**,char*,int ,int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int free (char*) ;
 int pci_emul_alloc_bar (struct pci_devinst*,int ,int ,int ) ;
 int pci_lintr_request (struct pci_devinst*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int ) ;
 int pci_uart_intr_assert ;
 int pci_uart_intr_deassert ;
 int stderr ;
 struct uart_softc* uart_init (int ,int ,struct pci_devinst*) ;
 scalar_t__ uart_set_backend (struct uart_softc*,char*,char*) ;

__attribute__((used)) static int
pci_uart_init(struct pci_devinst *pi, char *opts)
{
 struct uart_softc *sc;
 char *name;

 pci_emul_alloc_bar(pi, 0, PCIBAR_IO, UART_IO_BAR_SIZE);
 pci_lintr_request(pi);


 pci_set_cfgdata16(pi, PCIR_DEVICE, COM_DEV);
 pci_set_cfgdata16(pi, PCIR_VENDOR, COM_VENDOR);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_SIMPLECOMM);

 sc = uart_init(pci_uart_intr_assert, pci_uart_intr_deassert, pi);
 pi->pi_arg = sc;

 asprintf(&name, "pci uart at %d:%d", pi->pi_slot, pi->pi_func);
 if (uart_set_backend(sc, opts, name) != 0) {
  fprintf(stderr, "Unable to initialize backend '%s' for %s\n", opts, name);
  free(name);
  return (-1);
 }

 free(name);
 return (0);
}
