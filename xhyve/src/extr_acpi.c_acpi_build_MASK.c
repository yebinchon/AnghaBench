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
struct TYPE_2__ {int /*<<< orphan*/  offset; int /*<<< orphan*/ * wsect; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* basl_ftables ; 
 int basl_keep_temps ; 
 int FUNC1 () ; 
 int basl_ncpu ; 
 int basl_verbose_iasl ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  hpet_capabilities ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(int ncpu)
{
	int err;
	int i;

	basl_ncpu = ncpu;

	err = FUNC3(&hpet_capabilities);
	if (err != 0)
		return (err);

	/*
	 * For debug, allow the user to have iasl compiler output sent
	 * to stdout rather than /dev/null
	 */
	if (FUNC2("BHYVE_ACPI_VERBOSE_IASL"))
		basl_verbose_iasl = 1;

	/*
	 * Allow the user to keep the generated ASL files for debugging
	 * instead of deleting them following use
	 */
	if (FUNC2("BHYVE_ACPI_KEEPTMPS"))
		basl_keep_temps = 1;

	i = 0;
	err = FUNC1();

	/*
	 * Run through all the ASL files, compiling them and
	 * copying them into guest memory
	 */
	while (!err && basl_ftables[i].wsect != NULL) {
		err = FUNC0(basl_ftables[i].wsect,
				   basl_ftables[i].offset);
		i++;
	}

	return (err);
}