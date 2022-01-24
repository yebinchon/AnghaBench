#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  RuntimeCount; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GPE_EVENT_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_GPE_DISABLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EvRemoveGpeReference ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC6 (
    ACPI_GPE_EVENT_INFO     *GpeEventInfo)
{
    ACPI_STATUS             Status = AE_OK;


    FUNC1 (EvRemoveGpeReference);


    if (!GpeEventInfo->RuntimeCount)
    {
        FUNC5 (AE_LIMIT);
    }

    GpeEventInfo->RuntimeCount--;
    if (!GpeEventInfo->RuntimeCount)
    {
        /* Disable on last reference */

        Status = FUNC3 (GpeEventInfo);
        if (FUNC2 (Status))
        {
            Status = FUNC4 (GpeEventInfo, ACPI_GPE_DISABLE);
        }

        if (FUNC0 (Status))
        {
            GpeEventInfo->RuntimeCount++;
        }
    }

    FUNC5 (Status);
}