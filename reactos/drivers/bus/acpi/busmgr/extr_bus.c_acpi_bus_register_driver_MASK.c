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
struct acpi_driver {int /*<<< orphan*/  references; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  WALK_DOWN ; 
 int /*<<< orphan*/  acpi_bus_attach ; 
 int /*<<< orphan*/  acpi_bus_drivers ; 
 int /*<<< orphan*/  acpi_bus_drivers_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_driver*) ; 
 int /*<<< orphan*/  acpi_root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5 (
	struct acpi_driver	*driver)
{
	if (!driver)
		FUNC3(AE_BAD_PARAMETER);

	//if (acpi_disabled)
	//	return_VALUE(AE_NOT_FOUND);

	FUNC1(&acpi_bus_drivers_lock);
	FUNC2(&driver->node, &acpi_bus_drivers);
	FUNC4(&acpi_bus_drivers_lock);

	FUNC0(acpi_root, acpi_bus_attach,
		WALK_DOWN, driver);

	FUNC3(driver->references);
}