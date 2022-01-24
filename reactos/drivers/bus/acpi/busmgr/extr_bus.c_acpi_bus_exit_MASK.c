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
 int /*<<< orphan*/  ACPI_BUS_REMOVAL_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_SYSTEM_NOTIFY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  acpi_bus_notify ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  acpi_root ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  return_VOID ; 

__attribute__((used)) static void
FUNC9 (void)
{
	ACPI_STATUS		status = AE_OK;

	FUNC3("acpi_bus_exit\n");

	status = FUNC1(ACPI_ROOT_OBJECT,
		ACPI_SYSTEM_NOTIFY, acpi_bus_notify);
	if (FUNC0(status))
		FUNC3("Error removing notify handler\n");

#ifdef CONFIG_ACPI_PCI
	acpi_pci_root_exit();
	acpi_pci_link_exit();
#endif
#ifdef CONFIG_ACPI_EC
	acpi_ec_exit();
#endif
	//acpi_power_exit();
	FUNC8();

	FUNC4(acpi_root, ACPI_BUS_REMOVAL_NORMAL);

	status = FUNC2();
	if (FUNC0(status))
		FUNC3("Unable to terminate the ACPI Interpreter\n");
	else
		FUNC3("Interpreter disabled\n");

	return_VOID;
}