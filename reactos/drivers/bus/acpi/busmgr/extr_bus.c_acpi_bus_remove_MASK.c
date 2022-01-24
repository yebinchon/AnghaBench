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
struct TYPE_2__ {struct acpi_device* hardware_id; struct acpi_device* cid_list; } ;
struct acpi_device {TYPE_1__ pnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (
	struct acpi_device	*device,
	int			type)
{

	if (!device)
		FUNC2(AE_NOT_FOUND);

	FUNC1(device);

	if (device->pnp.cid_list)
		FUNC0(device->pnp.cid_list, 'DpcA');

	if (device->pnp.hardware_id)
		FUNC0(device->pnp.hardware_id, 'DpcA');

	if (device)
		FUNC0(device, 'DpcA');

	FUNC2(0);
}