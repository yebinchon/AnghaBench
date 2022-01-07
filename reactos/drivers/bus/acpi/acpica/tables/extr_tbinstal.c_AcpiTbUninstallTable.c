
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Flags; scalar_t__ Address; } ;
typedef TYPE_1__ ACPI_TABLE_DESC ;


 int ACPI_FREE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_PHYSADDR_TO_PTR (scalar_t__) ;
 scalar_t__ ACPI_PTR_TO_PHYSADDR (int *) ;
 int ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL ;
 int ACPI_TABLE_ORIGIN_MASK ;
 int AcpiTbInvalidateTable (TYPE_1__*) ;
 int TbUninstallTable ;
 int return_VOID ;

void
AcpiTbUninstallTable (
    ACPI_TABLE_DESC *TableDesc)
{

    ACPI_FUNCTION_TRACE (TbUninstallTable);




    if (!TableDesc->Address)
    {
        return_VOID;
    }

    AcpiTbInvalidateTable (TableDesc);

    if ((TableDesc->Flags & ACPI_TABLE_ORIGIN_MASK) ==
        ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL)
    {
        ACPI_FREE (ACPI_PHYSADDR_TO_PTR (TableDesc->Address));
    }

    TableDesc->Address = ACPI_PTR_TO_PHYSADDR (((void*)0));
    return_VOID;
}
