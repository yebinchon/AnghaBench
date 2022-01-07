
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_PHYSICAL_ADDRESS ;


 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int DPRINT1 (char*) ;

ACPI_STATUS
AcpiOsPhysicalTableOverride(
    ACPI_TABLE_HEADER *ExistingTable,
    ACPI_PHYSICAL_ADDRESS *NewAddress,
    UINT32 *NewTableLength)
{
    if (!ExistingTable || !NewAddress || !NewTableLength)
    {
        DPRINT1("Invalid parameter\n");
        return AE_BAD_PARAMETER;
    }


    *NewAddress = 0;
    *NewTableLength = 0;

    return AE_OK;
}
