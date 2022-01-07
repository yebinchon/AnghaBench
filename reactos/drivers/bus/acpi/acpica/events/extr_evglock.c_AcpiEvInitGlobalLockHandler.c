
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_STATUS ;


 int ACPI_ERROR (int ) ;
 int ACPI_EVENT_GLOBAL ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 scalar_t__ AE_NO_HARDWARE_RESPONSE ;
 scalar_t__ AE_OK ;
 int AcpiEvGlobalLockHandler ;
 void* AcpiGbl_GlobalLockPending ;
 int AcpiGbl_GlobalLockPendingLock ;
 void* AcpiGbl_GlobalLockPresent ;
 scalar_t__ AcpiGbl_ReducedHardware ;
 scalar_t__ AcpiInstallFixedEventHandler (int ,int ,int *) ;
 scalar_t__ AcpiOsCreateLock (int *) ;
 int EvInitGlobalLockHandler ;
 void* FALSE ;
 void* TRUE ;
 int return_ACPI_STATUS (scalar_t__) ;

ACPI_STATUS
AcpiEvInitGlobalLockHandler (
    void)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (EvInitGlobalLockHandler);




    if (AcpiGbl_ReducedHardware)
    {
        return_ACPI_STATUS (AE_OK);
    }



    Status = AcpiInstallFixedEventHandler (ACPI_EVENT_GLOBAL,
        AcpiEvGlobalLockHandler, ((void*)0));







    AcpiGbl_GlobalLockPresent = FALSE;
    if (Status == AE_NO_HARDWARE_RESPONSE)
    {
        ACPI_ERROR ((AE_INFO,
            "No response from Global Lock hardware, disabling lock"));

        return_ACPI_STATUS (AE_OK);
    }

    Status = AcpiOsCreateLock (&AcpiGbl_GlobalLockPendingLock);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    AcpiGbl_GlobalLockPending = FALSE;
    AcpiGbl_GlobalLockPresent = TRUE;
    return_ACPI_STATUS (Status);
}
