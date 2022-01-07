
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int OsMutex; } ;
struct TYPE_4__ {TYPE_1__ Mutex; } ;
typedef void* BOOLEAN ;
typedef int ACPI_STATUS ;


 int ACPI_BITREG_GLOBAL_LOCK_RELEASE ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ENABLE_EVENT ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_RELEASE_GLOBAL_LOCK (int ,void*) ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AE_NOT_ACQUIRED ;
 int AE_OK ;
 int AcpiGbl_FACS ;
 void* AcpiGbl_GlobalLockAcquired ;
 TYPE_2__* AcpiGbl_GlobalLockMutex ;
 scalar_t__ AcpiGbl_GlobalLockPresent ;
 int AcpiOsReleaseMutex (int ) ;
 int AcpiWriteBitRegister (int ,int ) ;
 int EvReleaseGlobalLock ;
 void* FALSE ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvReleaseGlobalLock (
    void)
{
    BOOLEAN Pending = FALSE;
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE (EvReleaseGlobalLock);




    if (!AcpiGbl_GlobalLockAcquired)
    {
        ACPI_WARNING ((AE_INFO,
            "Cannot release the ACPI Global Lock, it has not been acquired"));
        return_ACPI_STATUS (AE_NOT_ACQUIRED);
    }

    if (AcpiGbl_GlobalLockPresent)
    {


        ACPI_RELEASE_GLOBAL_LOCK (AcpiGbl_FACS, Pending);





        if (Pending)
        {
            Status = AcpiWriteBitRegister (
                ACPI_BITREG_GLOBAL_LOCK_RELEASE, ACPI_ENABLE_EVENT);
        }

        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Released hardware Global Lock\n"));
    }

    AcpiGbl_GlobalLockAcquired = FALSE;



    AcpiOsReleaseMutex (AcpiGbl_GlobalLockMutex->Mutex.OsMutex);
    return_ACPI_STATUS (Status);
}
