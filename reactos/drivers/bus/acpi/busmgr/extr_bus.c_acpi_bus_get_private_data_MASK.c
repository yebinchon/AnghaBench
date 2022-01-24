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
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_bus_private_data_handler ; 

int FUNC3(ACPI_HANDLE handle, void **data)
{
	ACPI_STATUS status = AE_OK;

	if (!*data)
		return -1;

	status = FUNC1(handle, acpi_bus_private_data_handler, data);
	if (FUNC0(status) || !*data) {
		FUNC2("No context for object [%p]\n", handle);
		return -1;
	}

	return 0;
}