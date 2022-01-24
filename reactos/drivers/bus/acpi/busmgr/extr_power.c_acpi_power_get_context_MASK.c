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
struct acpi_power_resource {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 scalar_t__ FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4 (
	ACPI_HANDLE		handle,
	struct acpi_power_resource **resource)
{
	int			result = 0;
	struct acpi_device	*device = NULL;

	if (!resource)
		FUNC3(-15);

	result = FUNC1(handle, &device);
	if (result) {
		FUNC0((ACPI_DB_WARN, "Error getting context [%p]\n",
			handle));
		FUNC3(result);
	}

	*resource = (struct acpi_power_resource *) FUNC2(device);
	if (!*resource)
		FUNC3(-15);

	return 0;
}