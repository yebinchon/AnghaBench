
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_CPU_FLAGS ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_INTERRUPT_HANDLED ;
 int AE_INFO ;
 scalar_t__ AcpiGbl_GlobalLockPending ;
 int AcpiGbl_GlobalLockPendingLock ;
 int AcpiGbl_GlobalLockSemaphore ;
 int AcpiOsAcquireLock (int ) ;
 int AcpiOsReleaseLock (int ,int ) ;
 int AcpiOsSignalSemaphore (int ,int) ;
 scalar_t__ FALSE ;

__attribute__((used)) static UINT32
AcpiEvGlobalLockHandler (
    void *Context)
{
    ACPI_STATUS Status;
    ACPI_CPU_FLAGS Flags;


    Flags = AcpiOsAcquireLock (AcpiGbl_GlobalLockPendingLock);






    if (!AcpiGbl_GlobalLockPending)
    {
        goto CleanupAndExit;
    }





    Status = AcpiOsSignalSemaphore (AcpiGbl_GlobalLockSemaphore, 1);
    if (ACPI_FAILURE (Status))
    {
        ACPI_ERROR ((AE_INFO, "Could not signal Global Lock semaphore"));
    }

    AcpiGbl_GlobalLockPending = FALSE;


CleanupAndExit:

    AcpiOsReleaseLock (AcpiGbl_GlobalLockPendingLock, Flags);
    return (ACPI_INTERRUPT_HANDLED);
}
