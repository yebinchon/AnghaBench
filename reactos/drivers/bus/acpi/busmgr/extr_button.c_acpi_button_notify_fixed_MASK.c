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
struct acpi_button {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BUTTON_NOTIFY_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_button*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC3 (
	void			*data)
{
	struct acpi_button	*button = (struct acpi_button *) data;
	
	FUNC0("acpi_button_notify_fixed");

	if (!button)
		FUNC2(AE_BAD_PARAMETER);

	FUNC1(button->handle, ACPI_BUTTON_NOTIFY_STATUS, button);

	FUNC2(AE_OK);
}