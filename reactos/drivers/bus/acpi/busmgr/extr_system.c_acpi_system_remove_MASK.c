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
struct acpi_system {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_system*,char) ; 
 scalar_t__ FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4 (
	struct acpi_device	*device,
	int			type)
{
	struct acpi_system	*system = NULL;

	FUNC0("acpi_system_remove");

	if (!device || !FUNC2(device))
		FUNC3(-1);

	system = (struct acpi_system *) FUNC2(device);

//#ifdef CONFIG_PM
//	/* Remove the soft-off (S5) handler. */
//	if (system->states[ACPI_STATE_S5]) {
//		unregister_sysrq_key('o', &sysrq_acpi_poweroff_op);
//		pm_power_off = NULL;
//	}
//#endif
//
//
	FUNC1(system, 'IPCA');

	return 0;
}