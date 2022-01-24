#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT8 ;
typedef  scalar_t__ UINT64 ;
struct TYPE_4__ {int /*<<< orphan*/  Address; } ;
struct TYPE_5__ {TYPE_1__ SleepStatus; TYPE_1__ SleepControl; } ;
typedef  scalar_t__ ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int ACPI_X_SLEEP_ENABLE ; 
 int ACPI_X_SLEEP_TYPE_MASK ; 
 int ACPI_X_SLEEP_TYPE_POSITION ; 
 int ACPI_X_WAKE_STATUS ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 scalar_t__ AE_NOT_EXIST ; 
 scalar_t__ AE_OK ; 
 TYPE_3__ AcpiGbl_FADT ; 
 int AcpiGbl_SleepTypeA ; 
 int /*<<< orphan*/  AcpiGbl_SystemAwakeAndRunning ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HwExtendedSleep ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

ACPI_STATUS
FUNC8 (
    UINT8                   SleepState)
{
    ACPI_STATUS             Status;
    UINT8                   SleepControl;
    UINT64                  SleepStatus;


    FUNC3 (HwExtendedSleep);


    /* Extended sleep registers must be valid */

    if (!AcpiGbl_FADT.SleepControl.Address ||
        !AcpiGbl_FADT.SleepStatus.Address)
    {
        FUNC7 (AE_NOT_EXIST);
    }

    /* Clear wake status (WAK_STS) */

    Status = FUNC6 ((UINT64) ACPI_X_WAKE_STATUS,
        &AcpiGbl_FADT.SleepStatus);
    if (FUNC1 (Status))
    {
        FUNC7 (Status);
    }

    AcpiGbl_SystemAwakeAndRunning = FALSE;

    /*
     * Set the SLP_TYP and SLP_EN bits.
     *
     * Note: We only use the first value returned by the \_Sx method
     * (AcpiGbl_SleepTypeA) - As per ACPI specification.
     */
    FUNC0 ((ACPI_DB_INIT,
        "Entering sleep state [S%u]\n", SleepState));

    SleepControl = ((AcpiGbl_SleepTypeA << ACPI_X_SLEEP_TYPE_POSITION) &
        ACPI_X_SLEEP_TYPE_MASK) | ACPI_X_SLEEP_ENABLE;

    /* Flush caches, as per ACPI specification */

    FUNC2 ();

    Status = FUNC4 (SleepState, SleepControl, 0);
    if (Status == AE_CTRL_TERMINATE)
    {
        FUNC7 (AE_OK);
    }
    if (FUNC1 (Status))
    {
        FUNC7 (Status);
    }

    Status = FUNC6 ((UINT64) SleepControl, &AcpiGbl_FADT.SleepControl);
    if (FUNC1 (Status))
    {
        FUNC7 (Status);
    }

    /* Wait for transition back to Working State */

    do
    {
        Status = FUNC5 (&SleepStatus, &AcpiGbl_FADT.SleepStatus);
        if (FUNC1 (Status))
        {
            FUNC7 (Status);
        }

    } while (!(((UINT8) SleepStatus) & ACPI_X_WAKE_STATUS));

    FUNC7 (AE_OK);
}