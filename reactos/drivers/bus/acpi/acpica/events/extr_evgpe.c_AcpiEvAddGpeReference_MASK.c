#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int RuntimeCount; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GPE_EVENT_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int ACPI_UINT8_MAX ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  EvAddGpeReference ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    ACPI_GPE_EVENT_INFO     *GpeEventInfo,
    BOOLEAN                 ClearOnEnable)
{
    ACPI_STATUS             Status = AE_OK;


    FUNC1 (EvAddGpeReference);


    if (GpeEventInfo->RuntimeCount == ACPI_UINT8_MAX)
    {
        FUNC6 (AE_LIMIT);
    }

    GpeEventInfo->RuntimeCount++;
    if (GpeEventInfo->RuntimeCount == 1)
    {
        /* Enable on first reference */

        if (ClearOnEnable)
        {
            (void) FUNC5 (GpeEventInfo);
        }

        Status = FUNC4 (GpeEventInfo);
        if (FUNC2 (Status))
        {
            Status = FUNC3 (GpeEventInfo);
        }

        if (FUNC0 (Status))
        {
            GpeEventInfo->RuntimeCount--;
        }
    }

    FUNC6 (Status);
}