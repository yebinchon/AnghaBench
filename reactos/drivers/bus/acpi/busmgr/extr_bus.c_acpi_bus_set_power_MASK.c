#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  bus_id; } ;
struct TYPE_14__ {scalar_t__ power_resources; } ;
struct TYPE_15__ {int state; TYPE_6__ flags; TYPE_5__* states; } ;
struct TYPE_9__ {int /*<<< orphan*/  force_power_state; int /*<<< orphan*/  power_manageable; } ;
struct acpi_device {TYPE_8__ pnp; TYPE_7__ power; int /*<<< orphan*/  handle; TYPE_3__* parent; TYPE_1__ flags; } ;
struct TYPE_12__ {scalar_t__ explicit_set; int /*<<< orphan*/  valid; } ;
struct TYPE_13__ {TYPE_4__ flags; } ;
struct TYPE_10__ {int state; } ;
struct TYPE_11__ {TYPE_2__ power; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_STATE_D0 ; 
 int ACPI_STATE_D3 ; 
 int AE_BAD_PARAMETER ; 
 int AE_NOT_FOUND ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct acpi_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int
FUNC8 (
	ACPI_HANDLE		handle,
	int			state)
{
	int			result = 0;
	ACPI_STATUS		status = AE_OK;
	struct acpi_device	*device = NULL;
	char			object_name[5] = {'_','P','S','0'+state,'\0'};


	result = FUNC4(handle, &device);
	if (result)
		FUNC7(result);

	if ((state < ACPI_STATE_D0) || (state > ACPI_STATE_D3))
		FUNC7(AE_BAD_PARAMETER);

	/* Make sure this is a valid target state */

	if (!device->flags.power_manageable) {
		FUNC3( "Device is not power manageable\n");
		FUNC7(AE_NOT_FOUND);
	}
	/*
	 * Get device's current power state
	 */
	//if (!acpi_power_nocheck) {
		/*
		 * Maybe the incorrect power state is returned on the bogus
		 * bios, which is different with the real power state.
		 * For example: the bios returns D0 state and the real power
		 * state is D3. OS expects to set the device to D0 state. In
		 * such case if OS uses the power state returned by the BIOS,
		 * the device can't be transisted to the correct power state.
		 * So if the acpi_power_nocheck is set, it is unnecessary to
		 * get the power state by calling acpi_bus_get_power.
		 */
		FUNC5(device->handle, &device->power.state);
	//}

	if ((state == device->power.state) && !device->flags.force_power_state) {
		FUNC3("Device is already at D%d\n", state);
		return 0;
	}
	if (!device->power.states[state].flags.valid) {
		FUNC3( "Device does not support D%d\n", state);
		return AE_NOT_FOUND;
	}
	if (device->parent && (state < device->parent->power.state)) {
		FUNC3( "Cannot set device to a higher-powered state than parent\n");
		return AE_NOT_FOUND;
	}

	/*
	 * Transition Power
	 * ----------------
	 * On transitions to a high-powered state we first apply power (via
	 * power resources) then evalute _PSx.  Conversely for transitions to
	 * a lower-powered state.
	 */
	if (state < device->power.state) {
		if (device->power.flags.power_resources) {
			result = FUNC6(device, state);
			if (result)
				goto end;
		}
		if (device->power.states[state].flags.explicit_set) {
			status = FUNC1(device->handle,
				object_name, NULL, NULL);
			if (FUNC0(status)) {
				result = AE_NOT_FOUND;
				goto end;
			}
		}
	}
	else {
		if (device->power.states[state].flags.explicit_set) {
			status = FUNC1(device->handle,
				object_name, NULL, NULL);
			if (FUNC0(status)) {
				result = AE_NOT_FOUND;
				goto end;
			}
		}
		if (device->power.flags.power_resources) {
			result = FUNC6(device, state);
			if (result)
				goto end;
		}
	}

end:
	if (result)
		FUNC2( "Error transitioning device [%s] to D%d\n",
			device->pnp.bus_id, state);
	else
		FUNC2("Device [%s] transitioned to D%d\n",
			device->pnp.bus_id, state);

	return result;
}