
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KBD_DATA_PORT ;
 int KBD_STS_CTL_PORT ;
 int dsdt_fixed_ioport (int ,int) ;
 int dsdt_fixed_irq (int) ;
 int dsdt_indent (int) ;
 int dsdt_line (char*) ;
 int dsdt_unindent (int) ;

__attribute__((used)) static void
atkbdc_dsdt(void)
{

 dsdt_line("");
 dsdt_line("Device (KBD)");
 dsdt_line("{");
 dsdt_line("  Name (_HID, EisaId (\"PNP0303\"))");
 dsdt_line("  Name (_CRS, ResourceTemplate ()");
 dsdt_line("  {");
 dsdt_indent(2);
 dsdt_fixed_ioport(KBD_DATA_PORT, 1);
 dsdt_fixed_ioport(KBD_STS_CTL_PORT, 1);
 dsdt_fixed_irq(1);
 dsdt_unindent(2);
 dsdt_line("  })");
 dsdt_line("}");

 dsdt_line("");
 dsdt_line("Device (MOU)");
 dsdt_line("{");
 dsdt_line("  Name (_HID, EisaId (\"PNP0F13\"))");
 dsdt_line("  Name (_CRS, ResourceTemplate ()");
 dsdt_line("  {");
 dsdt_indent(2);
 dsdt_fixed_ioport(KBD_DATA_PORT, 1);
 dsdt_fixed_ioport(KBD_STS_CTL_PORT, 1);
 dsdt_fixed_irq(12);
 dsdt_unindent(2);
 dsdt_line("  })");
 dsdt_line("}");
}
