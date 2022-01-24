#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int rm_firstdatacol; } ;
typedef  TYPE_1__ raidz_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_PANIC ; 
 scalar_t__ RAIDZ_ORIGINAL_IMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

void
FUNC5(raidz_map_t *rm)
{
	/* Generate using the new math implementation */
	if (FUNC4(rm) != RAIDZ_ORIGINAL_IMPL)
		return;

	switch (rm->rm_firstdatacol) {
	case 1:
		FUNC1(rm);
		break;
	case 2:
		FUNC2(rm);
		break;
	case 3:
		FUNC3(rm);
		break;
	default:
		FUNC0(CE_PANIC, "invalid RAID-Z configuration");
	}
}