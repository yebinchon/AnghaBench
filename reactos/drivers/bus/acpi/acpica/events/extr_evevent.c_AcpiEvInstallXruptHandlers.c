
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiEvInitGlobalLockHandler () ;
 int AcpiEvInstallSciHandler () ;
 int AcpiGbl_EventsInitialized ;
 scalar_t__ AcpiGbl_ReducedHardware ;
 int EvInstallXruptHandlers ;
 int TRUE ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvInstallXruptHandlers (
    void)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (EvInstallXruptHandlers);




    if (AcpiGbl_ReducedHardware)
    {
        return_ACPI_STATUS (AE_OK);
    }



    Status = AcpiEvInstallSciHandler ();
    if (ACPI_FAILURE (Status))
    {
        ACPI_EXCEPTION ((AE_INFO, Status,
            "Unable to install System Control Interrupt handler"));
        return_ACPI_STATUS (Status);
    }



    Status = AcpiEvInitGlobalLockHandler ();
    if (ACPI_FAILURE (Status))
    {
        ACPI_EXCEPTION ((AE_INFO, Status,
            "Unable to initialize Global Lock handler"));
        return_ACPI_STATUS (Status);
    }

    AcpiGbl_EventsInitialized = TRUE;
    return_ACPI_STATUS (Status);
}
