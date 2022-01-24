#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct acpi_driver {int /*<<< orphan*/  references; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  present; } ;
struct acpi_device {TYPE_2__ pnp; TYPE_1__ status; scalar_t__ driver; } ;

/* Variables and functions */
 int AE_BAD_PARAMETER ; 
 int AE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct acpi_device*,struct acpi_driver*) ; 
 int /*<<< orphan*/  acpi_bus_drivers_lock ; 
 int FUNC2 (struct acpi_device*,struct acpi_driver*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6 (
	struct acpi_device	*device,
	int			level,
	void			*data)
{
	int			result = 0;
	struct acpi_driver	*driver = NULL;

	if (!device || !data)
		FUNC4(AE_BAD_PARAMETER);

	driver = (struct acpi_driver *) data;

	if (device->driver)
		FUNC4(-9);

	if (!device->status.present)
		FUNC4(AE_NOT_FOUND);

	result = FUNC2(device, driver);
	if (result)
		FUNC4(result);

	FUNC0("Found driver [%s] for device [%s]\n",
		driver->name, device->pnp.bus_id);

	result = FUNC1(device, driver);
	if (result)
		FUNC4(result);

	FUNC3(&acpi_bus_drivers_lock);
	++driver->references;
	FUNC5(&acpi_bus_drivers_lock);

	FUNC4(0);
}