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
struct TYPE_3__ {int /*<<< orphan*/  valid; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;
struct acpi_device {TYPE_2__ wakeup; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 

BOOLEAN FUNC1(ACPI_HANDLE handle)
{
	struct acpi_device *device;
	int result;

	result = FUNC0(handle, &device);
	return result ? 0 : device->wakeup.flags.valid;
}