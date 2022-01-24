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
struct acpi_button {int type; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
#define  ACPI_BUTTON_TYPE_LID 130 
#define  ACPI_BUTTON_TYPE_POWERF 129 
#define  ACPI_BUTTON_TYPE_SLEEPF 128 
 int /*<<< orphan*/  ACPI_DB_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int const ACPI_EVENT_POWER_BUTTON ; 
 int const ACPI_EVENT_SLEEP_BUTTON ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_button*,char) ; 
 int /*<<< orphan*/  acpi_button_notify ; 
 int /*<<< orphan*/  acpi_button_notify_fixed ; 
 struct acpi_button* FUNC6 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8 (struct acpi_device *device, int type)
{
	ACPI_STATUS		status = 0;
	struct acpi_button	*button = NULL;

	FUNC2("acpi_button_remove");

	if (!device || !FUNC6(device))
		FUNC7(-1);

	button = FUNC6(device);

	/* Unregister for device notifications. */
	switch (button->type) {
	case ACPI_BUTTON_TYPE_POWERF:
		status = FUNC3(
			ACPI_EVENT_POWER_BUTTON, acpi_button_notify_fixed);
		break;
	case ACPI_BUTTON_TYPE_SLEEPF:
		status = FUNC3(
			ACPI_EVENT_SLEEP_BUTTON, acpi_button_notify_fixed);
		break;
	case ACPI_BUTTON_TYPE_LID:
		status = FUNC3(
			ACPI_BUTTON_TYPE_LID, acpi_button_notify_fixed);
		break;
	default:
		status = FUNC4(button->handle,
			ACPI_DEVICE_NOTIFY, acpi_button_notify);
		break;
	}

	if (FUNC1(status))
		FUNC0((ACPI_DB_ERROR,
			"Error removing notify handler\n"));

	FUNC5(button, 'IPCA');

	FUNC7(0);
}