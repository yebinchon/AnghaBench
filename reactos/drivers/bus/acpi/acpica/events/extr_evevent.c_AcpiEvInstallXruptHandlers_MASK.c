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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  AcpiGbl_EventsInitialized ; 
 scalar_t__ AcpiGbl_ReducedHardware ; 
 int /*<<< orphan*/  EvInstallXruptHandlers ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC6 (
    void)
{
    ACPI_STATUS             Status;


    FUNC2 (EvInstallXruptHandlers);


    /* If Hardware Reduced flag is set, there is no ACPI h/w */

    if (AcpiGbl_ReducedHardware)
    {
        FUNC5 (AE_OK);
    }

    /* Install the SCI handler */

    Status = FUNC4 ();
    if (FUNC1 (Status))
    {
        FUNC0 ((AE_INFO, Status,
            "Unable to install System Control Interrupt handler"));
        FUNC5 (Status);
    }

    /* Install the handler for the Global Lock */

    Status = FUNC3 ();
    if (FUNC1 (Status))
    {
        FUNC0 ((AE_INFO, Status,
            "Unable to initialize Global Lock handler"));
        FUNC5 (Status);
    }

    AcpiGbl_EventsInitialized = TRUE;
    FUNC5 (Status);
}