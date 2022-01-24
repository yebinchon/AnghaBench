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
struct acpi_driver {int /*<<< orphan*/  node; scalar_t__ references; } ;

/* Variables and functions */
 int /*<<< orphan*/  WALK_UP ; 
 int /*<<< orphan*/  acpi_bus_drivers_lock ; 
 int /*<<< orphan*/  acpi_bus_unattach ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_driver*) ; 
 int /*<<< orphan*/  acpi_root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4 (
	struct acpi_driver	*driver)
{
	if (!driver)
		return;

	FUNC0(acpi_root, acpi_bus_unattach, WALK_UP, driver);

	if (driver->references)
		return;

	FUNC1(&acpi_bus_drivers_lock);
	FUNC2(&driver->node);
	FUNC3(&acpi_bus_drivers_lock);

	return;
}