#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_7__ {scalar_t__ ms_disabled; int /*<<< orphan*/  ms_lock; TYPE_3__* ms_group; } ;
typedef  TYPE_2__ metaslab_t ;
struct TYPE_8__ {int /*<<< orphan*/  mg_ms_disabled_lock; int /*<<< orphan*/  mg_ms_disabled_cv; int /*<<< orphan*/  mg_ms_disabled; TYPE_1__* mg_vd; } ;
typedef  TYPE_3__ metaslab_group_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/ * vdev_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(metaslab_t *msp, boolean_t sync, boolean_t unload)
{
	metaslab_group_t *mg = msp->ms_group;
	spa_t *spa = mg->mg_vd->vdev_spa;

	/*
	 * Wait for the outstanding IO to be synced to prevent newly
	 * allocated blocks from being overwritten.  This used by
	 * initialize and TRIM which are modifying unallocated space.
	 */
	if (sync)
		FUNC5(FUNC4(spa), 0);

	FUNC2(&mg->mg_ms_disabled_lock);
	FUNC2(&msp->ms_lock);
	if (--msp->ms_disabled == 0) {
		mg->mg_ms_disabled--;
		FUNC0(&mg->mg_ms_disabled_cv);
		if (unload)
			FUNC1(msp);
	}
	FUNC3(&msp->ms_lock);
	FUNC3(&mg->mg_ms_disabled_lock);
}