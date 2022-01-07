
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_4__ {size_t CurrentTableCount; TYPE_1__* Tables; } ;
struct TYPE_3__ {int OwnerId; } ;
typedef int ACPI_STATUS ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_TABLES ;
 int AE_BAD_PARAMETER ;
 TYPE_2__ AcpiGbl_RootTableList ;
 int AcpiUtAcquireMutex (int ) ;
 int AcpiUtAllocateOwnerId (int *) ;
 int AcpiUtReleaseMutex (int ) ;
 int TbAllocateOwnerId ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiTbAllocateOwnerId (
    UINT32 TableIndex)
{
    ACPI_STATUS Status = AE_BAD_PARAMETER;


    ACPI_FUNCTION_TRACE (TbAllocateOwnerId);


    (void) AcpiUtAcquireMutex (ACPI_MTX_TABLES);
    if (TableIndex < AcpiGbl_RootTableList.CurrentTableCount)
    {
        Status = AcpiUtAllocateOwnerId (
            &(AcpiGbl_RootTableList.Tables[TableIndex].OwnerId));
    }

    (void) AcpiUtReleaseMutex (ACPI_MTX_TABLES);
    return_ACPI_STATUS (Status);
}
