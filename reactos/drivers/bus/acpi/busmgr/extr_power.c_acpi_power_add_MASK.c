#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ResourceOrder; int /*<<< orphan*/  SystemLevel; } ;
union acpi_object {TYPE_2__ PowerResource; } ;
struct acpi_power_resource {int /*<<< orphan*/  order; int /*<<< orphan*/  system_level; int /*<<< orphan*/  name; int /*<<< orphan*/  reference; struct acpi_device* device; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct TYPE_6__ {int /*<<< orphan*/  bus_id; } ;
struct acpi_device {TYPE_3__ power; int /*<<< orphan*/  handle; struct acpi_power_resource* driver_data; TYPE_1__ pnp; } ;
struct TYPE_9__ {int member_0; union acpi_object* member_1; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OBJECT ;
typedef  TYPE_4__ ACPI_BUFFER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_POWER_CLASS ; 
 int /*<<< orphan*/  ACPI_POWER_DEVICE_NAME ; 
#define  ACPI_POWER_RESOURCE_STATE_OFF 129 
#define  ACPI_POWER_RESOURCE_STATE_ON 128 
 int /*<<< orphan*/  ACPI_STATE_D0 ; 
 int /*<<< orphan*/  ACPI_STATE_D3 ; 
 int /*<<< orphan*/  ACPI_STATE_UNKNOWN ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct acpi_power_resource* FUNC3 (int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_power_resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_device*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC12 (
	struct acpi_device	*device)
{
	int	 result = 0, state;
	ACPI_STATUS		status = AE_OK;
	struct acpi_power_resource *resource = NULL;
	union acpi_object	acpi_object;
	ACPI_BUFFER	buffer = {sizeof(ACPI_OBJECT), &acpi_object};


	if (!device)
		FUNC10(-1);

	resource = FUNC3(NonPagedPool,sizeof(struct acpi_power_resource),'IPCA');
	if (!resource)
		FUNC10(-4);

	resource->device = device;
	//mutex_init(&resource->resource_lock);
	FUNC5(&resource->reference);

	FUNC11(resource->name, device->pnp.bus_id);
	FUNC11(FUNC8(device), ACPI_POWER_DEVICE_NAME);
	FUNC11(FUNC7(device), ACPI_POWER_CLASS);
	device->driver_data = resource;

	/* Evalute the object to get the system level and resource order. */
	status = FUNC1(device->handle, NULL, NULL, &buffer);
	if (FUNC0(status)) {
		result = -15;
		goto end;
	}
	resource->system_level = acpi_object.PowerResource.SystemLevel;
	resource->order = acpi_object.PowerResource.ResourceOrder;

	result = FUNC9(device->handle, &state);
	if (result)
		goto end;

	switch (state) {
	case ACPI_POWER_RESOURCE_STATE_ON:
		device->power.state = ACPI_STATE_D0;
		break;
	case ACPI_POWER_RESOURCE_STATE_OFF:
		device->power.state = ACPI_STATE_D3;
		break;
	default:
		device->power.state = ACPI_STATE_UNKNOWN;
		break;
	}


	FUNC2("%s [%s] (%s)\n", FUNC8(device),
		FUNC6(device), state?"on":"off");

end:
	if (result)
		FUNC4(resource);

	return result;
}