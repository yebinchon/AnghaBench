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
 scalar_t__ AcpiGbl_ReducedHardware ; 
 int /*<<< orphan*/  EvInitializeEvents ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC6 (
    void)
{
    ACPI_STATUS             Status;


    FUNC2 (EvInitializeEvents);


    /* If Hardware Reduced flag is set, there are no fixed events */

    if (AcpiGbl_ReducedHardware)
    {
        FUNC5 (AE_OK);
    }

    /*
     * Initialize the Fixed and General Purpose Events. This is done prior to
     * enabling SCIs to prevent interrupts from occurring before the handlers
     * are installed.
     */
    Status = FUNC3 ();
    if (FUNC1 (Status))
    {
        FUNC0 ((AE_INFO, Status,
            "Unable to initialize fixed events"));
        FUNC5 (Status);
    }

    Status = FUNC4 ();
    if (FUNC1 (Status))
    {
        FUNC0 ((AE_INFO, Status,
            "Unable to initialize general purpose events"));
        FUNC5 (Status);
    }

    FUNC5 (Status);
}