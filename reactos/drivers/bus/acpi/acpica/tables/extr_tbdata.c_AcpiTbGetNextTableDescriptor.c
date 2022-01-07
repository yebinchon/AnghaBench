
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {scalar_t__ CurrentTableCount; scalar_t__ MaxTableCount; int * Tables; } ;
typedef int ACPI_TABLE_DESC ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 TYPE_1__ AcpiGbl_RootTableList ;
 int AcpiTbResizeRootTableList () ;

ACPI_STATUS
AcpiTbGetNextTableDescriptor (
    UINT32 *TableIndex,
    ACPI_TABLE_DESC **TableDesc)
{
    ACPI_STATUS Status;
    UINT32 i;




    if (AcpiGbl_RootTableList.CurrentTableCount >=
        AcpiGbl_RootTableList.MaxTableCount)
    {
        Status = AcpiTbResizeRootTableList();
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }
    }

    i = AcpiGbl_RootTableList.CurrentTableCount;
    AcpiGbl_RootTableList.CurrentTableCount++;

    if (TableIndex)
    {
        *TableIndex = i;
    }
    if (TableDesc)
    {
        *TableDesc = &AcpiGbl_RootTableList.Tables[i];
    }

    return (AE_OK);
}
