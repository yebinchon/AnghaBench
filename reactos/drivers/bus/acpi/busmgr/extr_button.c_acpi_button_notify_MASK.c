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
struct acpi_button {int /*<<< orphan*/  pushed; int /*<<< orphan*/  device; } ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
#define  ACPI_BUTTON_NOTIFY_STATUS 128 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC3 (
	ACPI_HANDLE		handle,
	UINT32			event,
	void			*data)
{
	struct acpi_button	*button = (struct acpi_button *) data;

	FUNC1("acpi_button_notify");

	if (!button || !button->device)
		return_VOID;

	switch (event) {
	case ACPI_BUTTON_NOTIFY_STATUS:
		FUNC2(button->device, event, ++button->pushed);
		break;
	default:
		FUNC0((ACPI_DB_INFO,
			"Unsupported event [0x%x]\n", event));
		break;
	}

	return_VOID;
}