
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_3__ {int OsMutex; } ;
struct TYPE_4__ {TYPE_1__ Mutex; } ;
typedef void* BOOLEAN ;
typedef int ACPI_STATUS ;
typedef int ACPI_CPU_FLAGS ;


 int ACPI_ACQUIRE_GLOBAL_LOCK (int ,void*) ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_WAIT_FOREVER ;
 int AE_OK ;
 int AcpiExSystemWaitMutex (int ,int ) ;
 int AcpiExSystemWaitSemaphore (int ,int ) ;
 int AcpiGbl_FACS ;
 void* AcpiGbl_GlobalLockAcquired ;
 int AcpiGbl_GlobalLockHandle ;
 TYPE_2__* AcpiGbl_GlobalLockMutex ;
 void* AcpiGbl_GlobalLockPending ;
 int AcpiGbl_GlobalLockPendingLock ;
 int AcpiGbl_GlobalLockPresent ;
 int AcpiGbl_GlobalLockSemaphore ;
 int AcpiOsAcquireLock (int ) ;
 int AcpiOsReleaseLock (int ,int ) ;
 int EvAcquireGlobalLock ;
 void* FALSE ;
 void* TRUE ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvAcquireGlobalLock (
    UINT16 Timeout)
{
    ACPI_CPU_FLAGS Flags;
    ACPI_STATUS Status;
    BOOLEAN Acquired = FALSE;


    ACPI_FUNCTION_TRACE (EvAcquireGlobalLock);






    Status = AcpiExSystemWaitMutex (AcpiGbl_GlobalLockMutex->Mutex.OsMutex,
                Timeout);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }
    AcpiGbl_GlobalLockHandle++;
    if (AcpiGbl_GlobalLockHandle == 0)
    {
        AcpiGbl_GlobalLockHandle = 1;
    }





    if (!AcpiGbl_GlobalLockPresent)
    {
        AcpiGbl_GlobalLockAcquired = TRUE;
        return_ACPI_STATUS (AE_OK);
    }

    Flags = AcpiOsAcquireLock (AcpiGbl_GlobalLockPendingLock);

    do
    {


        ACPI_ACQUIRE_GLOBAL_LOCK (AcpiGbl_FACS, Acquired);
        if (Acquired)
        {
            AcpiGbl_GlobalLockAcquired = TRUE;
            ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
                "Acquired hardware Global Lock\n"));
            break;
        }






        AcpiGbl_GlobalLockPending = TRUE;
        AcpiOsReleaseLock (AcpiGbl_GlobalLockPendingLock, Flags);

        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "Waiting for hardware Global Lock\n"));





        Status = AcpiExSystemWaitSemaphore (
            AcpiGbl_GlobalLockSemaphore, ACPI_WAIT_FOREVER);

        Flags = AcpiOsAcquireLock (AcpiGbl_GlobalLockPendingLock);

    } while (ACPI_SUCCESS (Status));

    AcpiGbl_GlobalLockPending = FALSE;
    AcpiOsReleaseLock (AcpiGbl_GlobalLockPendingLock, Flags);

    return_ACPI_STATUS (Status);
}
