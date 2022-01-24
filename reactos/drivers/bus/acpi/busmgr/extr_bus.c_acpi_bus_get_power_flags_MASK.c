#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int valid; int explicit_set; } ;
struct TYPE_10__ {scalar_t__ count; } ;
struct acpi_device_power_state {int power; int latency; TYPE_3__ flags; TYPE_5__ resources; } ;
struct TYPE_7__ {int explicit_get; int inrush_current; int power_resources; } ;
struct TYPE_9__ {int /*<<< orphan*/  state; struct acpi_device_power_state* states; TYPE_2__ flags; } ;
struct TYPE_6__ {int wake_capable; } ;
struct acpi_device {TYPE_4__ power; int /*<<< orphan*/  handle; TYPE_1__ flags; } ;
typedef  size_t UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 size_t ACPI_STATE_D0 ; 
 size_t ACPI_STATE_D3 ; 
 int /*<<< orphan*/  ACPI_STATE_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int AE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_5__*) ; 

__attribute__((used)) static int
FUNC3 (
	struct acpi_device	*device)
{
	ACPI_STATUS             status = 0;
	ACPI_HANDLE		handle = 0;
	UINT32                     i = 0;

	if (!device)
		return AE_NOT_FOUND;

	/*
	 * Power Management Flags
	 */
	status = FUNC1(device->handle, "_PSC", &handle);
	if (FUNC0(status))
		device->power.flags.explicit_get = 1;
	status = FUNC1(device->handle, "_IRC", &handle);
	if (FUNC0(status))
		device->power.flags.inrush_current = 1;
	status = FUNC1(device->handle, "_PRW", &handle);
	if (FUNC0(status))
		device->flags.wake_capable = 1;

	/*
	 * Enumerate supported power management states
	 */
	for (i = ACPI_STATE_D0; i <= ACPI_STATE_D3; i++) {
		struct acpi_device_power_state *ps = &device->power.states[i];
		char		object_name[5] = {'_','P','R','0'+i,'\0'};

		/* Evaluate "_PRx" to se if power resources are referenced */
		status = FUNC2(device->handle, object_name, NULL,
			&ps->resources);
		if (FUNC0(status) && ps->resources.count) {
			device->power.flags.power_resources = 1;
			ps->flags.valid = 1;
		}

		/* Evaluate "_PSx" to see if we can do explicit sets */
		object_name[2] = 'S';
		status = FUNC1(device->handle, object_name, &handle);
		if (FUNC0(status)) {
			ps->flags.explicit_set = 1;
			ps->flags.valid = 1;
		}

		/* State is valid if we have some power control */
		if (ps->resources.count || ps->flags.explicit_set)
			ps->flags.valid = 1;

		ps->power = -1;		/* Unknown - driver assigned */
		ps->latency = -1;	/* Unknown - driver assigned */
	}

	/* Set defaults for D0 and D3 states (always valid) */
	device->power.states[ACPI_STATE_D0].flags.valid = 1;
	device->power.states[ACPI_STATE_D0].power = 100;
	device->power.states[ACPI_STATE_D3].flags.valid = 1;
	device->power.states[ACPI_STATE_D3].power = 0;

	device->power.state = ACPI_STATE_UNKNOWN;

	return 0;
}