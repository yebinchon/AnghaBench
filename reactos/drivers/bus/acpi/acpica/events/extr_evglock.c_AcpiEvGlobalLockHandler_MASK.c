#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_CPU_FLAGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_INTERRUPT_HANDLED ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AcpiGbl_GlobalLockPending ; 
 int /*<<< orphan*/  AcpiGbl_GlobalLockPendingLock ; 
 int /*<<< orphan*/  AcpiGbl_GlobalLockSemaphore ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FALSE ; 

__attribute__((used)) static UINT32
FUNC5 (
    void                    *Context)
{
    ACPI_STATUS             Status;
    ACPI_CPU_FLAGS          Flags;


    Flags = FUNC2 (AcpiGbl_GlobalLockPendingLock);

    /*
     * If a request for the global lock is not actually pending,
     * we are done. This handles "spurious" global lock interrupts
     * which are possible (and have been seen) with bad BIOSs.
     */
    if (!AcpiGbl_GlobalLockPending)
    {
        goto CleanupAndExit;
    }

    /*
     * Send a unit to the global lock semaphore. The actual acquisition
     * of the global lock will be performed by the waiting thread.
     */
    Status = FUNC4 (AcpiGbl_GlobalLockSemaphore, 1);
    if (FUNC1 (Status))
    {
        FUNC0 ((AE_INFO, "Could not signal Global Lock semaphore"));
    }

    AcpiGbl_GlobalLockPending = FALSE;


CleanupAndExit:

    FUNC3 (AcpiGbl_GlobalLockPendingLock, Flags);
    return (ACPI_INTERRUPT_HANDLED);
}