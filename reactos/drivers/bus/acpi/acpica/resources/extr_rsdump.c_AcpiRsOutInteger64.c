
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int ACPI_FORMAT_UINT64 (int ) ;
 int AcpiOsPrintf (char*,char const*,int ) ;

__attribute__((used)) static void
AcpiRsOutInteger64 (
    const char *Title,
    UINT64 Value)
{

    AcpiOsPrintf ("%27s : %8.8X%8.8X\n", Title,
        ACPI_FORMAT_UINT64 (Value));
}
