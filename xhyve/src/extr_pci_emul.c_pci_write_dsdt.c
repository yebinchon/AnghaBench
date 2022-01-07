
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXBUSES ;
 int dsdt_indent (int) ;
 int dsdt_line (char*) ;
 int dsdt_unindent (int) ;
 int pci_bus_write_dsdt (int) ;

void
pci_write_dsdt(void)
{
 int bus;

 dsdt_indent(1);
 dsdt_line("Name (PICM, 0x00)");
 dsdt_line("Method (_PIC, 1, NotSerialized)");
 dsdt_line("{");
 dsdt_line("  Store (Arg0, PICM)");
 dsdt_line("}");
 dsdt_line("");
 dsdt_line("Scope (_SB)");
 dsdt_line("{");
 for (bus = 0; bus < MAXBUSES; bus++)
  pci_bus_write_dsdt(bus);
 dsdt_line("}");
 dsdt_unindent(1);
}
