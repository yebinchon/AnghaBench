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
typedef  int /*<<< orphan*/  ACPI_SEMAPHORE ;

/* Variables and functions */
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 

ACPI_STATUS
FUNC2(
    ACPI_SEMAPHORE Handle)
{
    if (!Handle)
    {
        FUNC0("Bad parameter\n");
        return AE_BAD_PARAMETER;
    }

    FUNC1(Handle, 'LpcA');

    return AE_OK;
}