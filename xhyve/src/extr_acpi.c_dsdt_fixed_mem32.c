
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int dsdt_line (char*,...) ;

void
dsdt_fixed_mem32(uint32_t base, uint32_t length)
{

 dsdt_line("Memory32Fixed (ReadWrite,");
 dsdt_line("  0x%08X,         // Address Base", base);
 dsdt_line("  0x%08X,         // Address Length", length);
 dsdt_line("  )");
}
