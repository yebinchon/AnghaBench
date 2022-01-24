#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ power_resources; scalar_t__ explicit_get; } ;
struct TYPE_12__ {int state; TYPE_4__ flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  bus_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  power_manageable; } ;
struct acpi_device {TYPE_6__ power; TYPE_5__ pnp; int /*<<< orphan*/  handle; TYPE_3__* parent; TYPE_1__ flags; } ;
struct TYPE_8__ {int state; } ;
struct TYPE_9__ {TYPE_2__ power; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_STATE_D0 ; 
 int ACPI_STATE_UNKNOWN ; 
 int AE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int FUNC4 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int
FUNC6 (
	ACPI_HANDLE		handle,
	int			*state)
{
	int			result = 0;
	ACPI_STATUS             status = 0;
	struct acpi_device	*device = NULL;
	unsigned long long		psc = 0;

	result = FUNC2(handle, &device);
	if (result)
		FUNC5(result);

	*state = ACPI_STATE_UNKNOWN;

	if (!device->flags.power_manageable) {
		/* TBD: Non-recursive algorithm for walking up hierarchy */
		if (device->parent)
			*state = device->parent->power.state;
		else
			*state = ACPI_STATE_D0;
	}
	else {
		/*
		 * Get the device's power state either directly (via _PSC) or
		 * indirectly (via power resources).
		 */
		if (device->power.flags.explicit_get) {
			status = FUNC3(device->handle, "_PSC",
				NULL, &psc);
			if (FUNC0(status))
				FUNC5(AE_NOT_FOUND);
			device->power.state = (int) psc;
		}
		else if (device->power.flags.power_resources) {
			result = FUNC4(device);
			if (result)
				FUNC5(result);
		}

		*state = device->power.state;
	}

	FUNC1("Device [%s] power state is D%d\n",
		device->pnp.bus_id, device->power.state);

	FUNC5(0);
}