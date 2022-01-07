
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Pointer; int Flags; int Length; } ;
typedef TYPE_1__ ACPI_TABLE_DESC ;
typedef int ACPI_STATUS ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiTbAcquireTable (TYPE_1__*,int *,int *,int *) ;
 int TbValidateTable ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiTbValidateTable (
    ACPI_TABLE_DESC *TableDesc)
{
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE (TbValidateTable);




    if (!TableDesc->Pointer)
    {
        Status = AcpiTbAcquireTable (TableDesc, &TableDesc->Pointer,
            &TableDesc->Length, &TableDesc->Flags);
        if (!TableDesc->Pointer)
        {
            Status = AE_NO_MEMORY;
        }
    }

    return_ACPI_STATUS (Status);
}
