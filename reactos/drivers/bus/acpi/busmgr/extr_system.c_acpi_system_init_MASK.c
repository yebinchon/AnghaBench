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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_system_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int 
FUNC3 (void)
{
	int			result = 0;

	FUNC0("acpi_system_init");

	result = FUNC1(&acpi_system_driver);
	if (result < 0)
		FUNC2(AE_NOT_FOUND);

	FUNC2(0);
}