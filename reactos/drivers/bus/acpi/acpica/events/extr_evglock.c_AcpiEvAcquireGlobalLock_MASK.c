#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_3__ {int /*<<< orphan*/  OsMutex; } ;
struct TYPE_4__ {TYPE_1__ Mutex; } ;
typedef  void* BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_CPU_FLAGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_FACS ; 
 void* AcpiGbl_GlobalLockAcquired ; 
 int AcpiGbl_GlobalLockHandle ; 
 TYPE_2__* AcpiGbl_GlobalLockMutex ; 
 void* AcpiGbl_GlobalLockPending ; 
 int /*<<< orphan*/  AcpiGbl_GlobalLockPendingLock ; 
 int /*<<< orphan*/  AcpiGbl_GlobalLockPresent ; 
 int /*<<< orphan*/  AcpiGbl_GlobalLockSemaphore ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EvAcquireGlobalLock ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC10 (
    UINT16                  Timeout)
{
    ACPI_CPU_FLAGS          Flags;
    ACPI_STATUS             Status;
    BOOLEAN                 Acquired = FALSE;


    FUNC3 (EvAcquireGlobalLock);


    /*
     * Only one thread can acquire the GL at a time, the GlobalLockMutex
     * enforces this. This interface releases the interpreter if we must wait.
     */
    Status = FUNC5 (AcpiGbl_GlobalLockMutex->Mutex.OsMutex,
                Timeout);
    if (FUNC2 (Status))
    {
        FUNC9 (Status);
    }

    /*
     * Update the global lock handle and check for wraparound. The handle is
     * only used for the external global lock interfaces, but it is updated
     * here to properly handle the case where a single thread may acquire the
     * lock via both the AML and the AcpiAcquireGlobalLock interfaces. The
     * handle is therefore updated on the first acquire from a given thread
     * regardless of where the acquisition request originated.
     */
    AcpiGbl_GlobalLockHandle++;
    if (AcpiGbl_GlobalLockHandle == 0)
    {
        AcpiGbl_GlobalLockHandle = 1;
    }

    /*
     * Make sure that a global lock actually exists. If not, just
     * treat the lock as a standard mutex.
     */
    if (!AcpiGbl_GlobalLockPresent)
    {
        AcpiGbl_GlobalLockAcquired = TRUE;
        FUNC9 (AE_OK);
    }

    Flags = FUNC7 (AcpiGbl_GlobalLockPendingLock);

    do
    {
        /* Attempt to acquire the actual hardware lock */

        FUNC0 (AcpiGbl_FACS, Acquired);
        if (Acquired)
        {
            AcpiGbl_GlobalLockAcquired = TRUE;
            FUNC1 ((ACPI_DB_EXEC,
                "Acquired hardware Global Lock\n"));
            break;
        }

        /*
         * Did not get the lock. The pending bit was set above, and
         * we must now wait until we receive the global lock
         * released interrupt.
         */
        AcpiGbl_GlobalLockPending = TRUE;
        FUNC8 (AcpiGbl_GlobalLockPendingLock, Flags);

        FUNC1 ((ACPI_DB_EXEC,
            "Waiting for hardware Global Lock\n"));

        /*
         * Wait for handshake with the global lock interrupt handler.
         * This interface releases the interpreter if we must wait.
         */
        Status = FUNC6 (
            AcpiGbl_GlobalLockSemaphore, ACPI_WAIT_FOREVER);

        Flags = FUNC7 (AcpiGbl_GlobalLockPendingLock);

    } while (FUNC4 (Status));

    AcpiGbl_GlobalLockPending = FALSE;
    FUNC8 (AcpiGbl_GlobalLockPendingLock, Flags);

    FUNC9 (Status);
}