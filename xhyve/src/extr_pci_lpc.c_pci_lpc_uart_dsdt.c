
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct lpc_uart_softc {scalar_t__ irq; scalar_t__ iobase; int enabled; } ;


 int LPC_UART_NUM ;
 int UART_IO_BAR_SIZE ;
 int dsdt_fixed_ioport (int ,int ) ;
 int dsdt_fixed_irq (int ) ;
 int dsdt_indent (int) ;
 int dsdt_line (char*,...) ;
 int dsdt_unindent (int) ;
 int * lpc_uart_names ;
 struct lpc_uart_softc* lpc_uart_softc ;

__attribute__((used)) static void
pci_lpc_uart_dsdt(void)
{
 struct lpc_uart_softc *sc;
 int unit;

 for (unit = 0; unit < LPC_UART_NUM; unit++) {
  sc = &lpc_uart_softc[unit];
  if (!sc->enabled)
   continue;
  dsdt_line("");
  dsdt_line("Device (%s)", lpc_uart_names[unit]);
  dsdt_line("{");
  dsdt_line("  Name (_HID, EisaId (\"PNP0501\"))");
  dsdt_line("  Name (_UID, %d)", unit + 1);
  dsdt_line("  Name (_CRS, ResourceTemplate ()");
  dsdt_line("  {");
  dsdt_indent(2);
  dsdt_fixed_ioport(((uint16_t) sc->iobase), UART_IO_BAR_SIZE);
  dsdt_fixed_irq(((uint8_t) sc->irq));
  dsdt_unindent(2);
  dsdt_line("  })");
  dsdt_line("}");
 }
}
