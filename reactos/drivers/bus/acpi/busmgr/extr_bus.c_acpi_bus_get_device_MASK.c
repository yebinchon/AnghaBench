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
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_bus_data_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4 (
	ACPI_HANDLE		handle,
	struct acpi_device	**device)
{
	ACPI_STATUS		status = AE_OK;

	if (!device)
		FUNC3(AE_BAD_PARAMETER);

	/* TBD: Support fixed-feature devices */

	status = FUNC1(handle, acpi_bus_data_handler, (void**)device);
	if (FUNC0(status) || !*device) {
		FUNC2( "Error getting context for object [%p]\n",
			handle);
		FUNC3(AE_NOT_FOUND);
	}

	return 0;
}