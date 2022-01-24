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
typedef  scalar_t__ ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 unsigned long long ACPI_STA_DEVICE_ENABLED ; 
 unsigned long long ACPI_STA_DEVICE_FUNCTIONING ; 
 unsigned long long ACPI_STA_DEVICE_PRESENT ; 
 unsigned long long ACPI_STA_DEVICE_UI ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ AE_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 

ACPI_STATUS FUNC2(ACPI_HANDLE handle,
				       unsigned long long *sta)
{
	ACPI_STATUS status;

	status = FUNC1(handle, "_STA", NULL, sta);
	if (FUNC0(status))
		return AE_OK;

	if (status == AE_NOT_FOUND) {
		*sta = ACPI_STA_DEVICE_PRESENT | ACPI_STA_DEVICE_ENABLED |
		       ACPI_STA_DEVICE_UI      | ACPI_STA_DEVICE_FUNCTIONING;
		return AE_OK;
	}
	return status;
}