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
 int EFAULT ; 
 int /*<<< orphan*/  XHYVE_ACPI_BASE ; 
 int /*<<< orphan*/  XHYVE_ACPI_SIZE ; 
 int acpi_ncpu ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  hpet_capabilities ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tb ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(int ncpu)
{
	int err;

	acpi_ncpu = ncpu;
	tb = FUNC9(XHYVE_ACPI_BASE, XHYVE_ACPI_SIZE);
	if (tb == NULL) {
		return (EFAULT);
	}

	err = FUNC10(&hpet_capabilities);
	if (err != 0) {
		return (err);
	}

	FUNC6();
	FUNC7();
	FUNC8();
	FUNC4();
	FUNC2();
	FUNC3();
	FUNC5();
	FUNC1();
	FUNC0();

	return 0;
}