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
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EVENT_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiEvGlobalLockHandler ; 
 int /*<<< orphan*/  AcpiGbl_GlobalLockPendingLock ; 
 int /*<<< orphan*/  AcpiGbl_GlobalLockPresent ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EvRemoveGlobalLockHandler ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC4 (
    void)
{
    ACPI_STATUS             Status;


    FUNC0 (EvRemoveGlobalLockHandler);


    AcpiGbl_GlobalLockPresent = FALSE;
    Status = FUNC2 (ACPI_EVENT_GLOBAL,
        AcpiEvGlobalLockHandler);

    FUNC1 (AcpiGbl_GlobalLockPendingLock);
    FUNC3 (Status);
}