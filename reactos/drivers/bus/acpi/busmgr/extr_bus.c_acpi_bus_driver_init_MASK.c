#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* add ) (struct acpi_device*) ;int (* start ) (struct acpi_device*) ;int /*<<< orphan*/  (* scan ) (struct acpi_device*) ;int /*<<< orphan*/  (* remove ) (struct acpi_device*,int /*<<< orphan*/ ) ;} ;
struct acpi_driver {TYPE_1__ ops; } ;
struct acpi_device {struct acpi_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BUS_REMOVAL_NORMAL ; 
 int AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct acpi_device*) ; 
 int FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*) ; 

__attribute__((used)) static int
FUNC6 (
	struct acpi_device	*device,
	struct acpi_driver	*driver)
{
	int			result = 0;

	if (!device || !driver)
		FUNC1(AE_BAD_PARAMETER);

	if (!driver->ops.add)
		FUNC1(-38);

	result = driver->ops.add(device);
	if (result) {
		device->driver = NULL;
		//acpi_driver_data(device) = NULL;
		FUNC1(result);
	}

	device->driver = driver;

	/*
	 * TBD - Configuration Management: Assign resources to device based
	 * upon possible configuration and currently allocated resources.
	 */

	if (driver->ops.start) {
		result = driver->ops.start(device);
		if (result && driver->ops.remove)
			driver->ops.remove(device, ACPI_BUS_REMOVAL_NORMAL);
		FUNC1(result);
	}

	FUNC0("Driver successfully bound to device\n");

	if (driver->ops.scan) {
		driver->ops.scan(device);
	}

	FUNC1(0);
}