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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_power_driver ; 
 int /*<<< orphan*/  acpi_power_resource_list ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4 (void)
{
	int			result = 0;

	FUNC0("acpi_power_init\n");

	FUNC1(&acpi_power_resource_list);


	result = FUNC2(&acpi_power_driver);
	if (result < 0) {
		FUNC3(-15);
	}

	FUNC3(0);
}