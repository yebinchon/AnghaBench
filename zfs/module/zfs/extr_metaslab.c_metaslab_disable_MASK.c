#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ms_disabled; int /*<<< orphan*/  ms_lock; TYPE_2__* ms_group; } ;
typedef  TYPE_1__ metaslab_t ;
struct TYPE_7__ {int /*<<< orphan*/  mg_ms_disabled_lock; int /*<<< orphan*/  mg_ms_disabled_cv; int /*<<< orphan*/  mg_disabled_updating; } ;
typedef  TYPE_2__ metaslab_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(metaslab_t *msp)
{
	FUNC0(!FUNC1(&msp->ms_lock));
	metaslab_group_t *mg = msp->ms_group;

	FUNC5(&mg->mg_ms_disabled_lock);

	/*
	 * To keep an accurate count of how many threads have disabled
	 * a specific metaslab group, we only allow one thread to mark
	 * the metaslab group at a time. This ensures that the value of
	 * ms_disabled will be accurate when we decide to mark a metaslab
	 * group as disabled. To do this we force all other threads
	 * to wait till the metaslab's mg_disabled_updating flag is no
	 * longer set.
	 */
	FUNC3(mg);
	mg->mg_disabled_updating = B_TRUE;
	if (msp->ms_disabled == 0) {
		FUNC4(mg);
	}
	FUNC5(&msp->ms_lock);
	msp->ms_disabled++;
	FUNC6(&msp->ms_lock);

	mg->mg_disabled_updating = B_FALSE;
	FUNC2(&mg->mg_ms_disabled_cv);
	FUNC6(&mg->mg_ms_disabled_lock);
}