
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 size_t ACPI_NUM_DEFAULT_SPACES ;
 int ACPI_REG_CONNECT ;
 int AcpiEvExecuteRegMethods (int ,int ,int ) ;
 scalar_t__ AcpiEvHasDefaultHandler (int ,int ) ;
 int * AcpiGbl_DefaultAddressSpaces ;
 int AcpiGbl_RootNode ;
 int AcpiUtAcquireMutex (int ) ;
 int AcpiUtReleaseMutex (int ) ;
 int EvInitializeOpRegions ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvInitializeOpRegions (
    void)
{
    ACPI_STATUS Status;
    UINT32 i;


    ACPI_FUNCTION_TRACE (EvInitializeOpRegions);


    Status = AcpiUtAcquireMutex (ACPI_MTX_NAMESPACE);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    for (i = 0; i < ACPI_NUM_DEFAULT_SPACES; i++)
    {





        if (AcpiEvHasDefaultHandler (AcpiGbl_RootNode,
               AcpiGbl_DefaultAddressSpaces[i]))
        {
            AcpiEvExecuteRegMethods (AcpiGbl_RootNode,
                AcpiGbl_DefaultAddressSpaces[i], ACPI_REG_CONNECT);
        }
    }

    (void) AcpiUtReleaseMutex (ACPI_MTX_NAMESPACE);
    return_ACPI_STATUS (Status);
}
