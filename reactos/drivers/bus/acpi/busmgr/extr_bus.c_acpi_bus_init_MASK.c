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

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BUS_TYPE_SYSTEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_FULL_INITIALIZATION ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_SYSTEM_NOTIFY ; 
 int AE_NOT_FOUND ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_bus_generate_event_dpc ; 
 int /*<<< orphan*/  acpi_bus_notify ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_root ; 
 int /*<<< orphan*/  event_dpc ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

int
FUNC13 (void)
{
	int			result = 0;
	ACPI_STATUS		status = AE_OK;

	FUNC6("acpi_bus_init\n");

        FUNC8(&event_dpc, acpi_bus_generate_event_dpc, NULL);

	status = FUNC1(ACPI_FULL_INITIALIZATION);
	if (FUNC0(status)) {
		FUNC7("Unable to start the ACPI Interpreter\n");
		goto error1;
	}

	/*
	 * ACPI 2.0 requires the EC driver to be loaded and work before
	 * the EC device is found in the namespace. This is accomplished
	 * by looking for the ECDT table, and getting the EC parameters out
	 * of that.
	 */
	//result = acpi_ec_ecdt_probe();
	/* Ignore result. Not having an ECDT is not fatal. */

	status = FUNC2(ACPI_FULL_INITIALIZATION);
	if (FUNC0(status)) {
		FUNC7("Unable to initialize ACPI objects\n");
		goto error1;
	}

	/*
	 * Maybe EC region is required at bus_scan/acpi_get_devices. So it
	 * is necessary to enable it as early as possible.
	 */
	//acpi_boot_ec_enable();

	/* Initialize sleep structures */
	//acpi_sleep_init();

	/*
	 * Register the for all standard device notifications.
	 */
	status = FUNC3(ACPI_ROOT_OBJECT, ACPI_SYSTEM_NOTIFY, acpi_bus_notify, NULL);
	if (FUNC0(status)) {
		FUNC7("Unable to register for device notifications\n");
		result = AE_NOT_FOUND;
		goto error1;
	}

	/*
	 * Create the root device in the bus's device tree
	 */
	result = FUNC9(&acpi_root, NULL, ACPI_ROOT_OBJECT,
		ACPI_BUS_TYPE_SYSTEM);
	if (result)
		goto error2;


	/*
	 * Enumerate devices in the ACPI namespace.
	 */
	result = FUNC11(acpi_root);
	if (result)
		FUNC7("acpi_bus_scan_fixed failed\n");
	result = FUNC10(acpi_root);
	if (result)
		FUNC7("acpi_bus_scan failed\n");

	FUNC12(0);

	/* Mimic structured exception handling */
error2:
	FUNC4(ACPI_ROOT_OBJECT,
		ACPI_SYSTEM_NOTIFY, acpi_bus_notify);
error1:
	FUNC5();
	FUNC12(AE_NOT_FOUND);
}