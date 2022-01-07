
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int BOOLEAN ;
typedef int ACPI_STATUS ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiGbl_RootNode ;
 int AcpiTbInstallStandardTable (int ,int ,int ,int ,int *) ;
 int AcpiTbLoadTable (int ,int ) ;
 int TRUE ;
 int TbInstallAndLoadTable ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiTbInstallAndLoadTable (
    ACPI_PHYSICAL_ADDRESS Address,
    UINT8 Flags,
    BOOLEAN Override,
    UINT32 *TableIndex)
{
    ACPI_STATUS Status;
    UINT32 i;


    ACPI_FUNCTION_TRACE (TbInstallAndLoadTable);




    Status = AcpiTbInstallStandardTable (Address, Flags, TRUE,
        Override, &i);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }

    Status = AcpiTbLoadTable (i, AcpiGbl_RootNode);

Exit:
    *TableIndex = i;
    return_ACPI_STATUS (Status);
}
