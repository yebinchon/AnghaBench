
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int dsdt_line (char*,...) ;

void
dsdt_fixed_irq(uint8_t irq)
{

 dsdt_line("IRQNoFlags ()");
 dsdt_line("  {%d}", irq);
}
