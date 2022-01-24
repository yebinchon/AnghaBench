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
struct TYPE_7__ {void* mmp_last_write; int mmp_delay; int /*<<< orphan*/  mmp_io_lock; } ;
struct TYPE_6__ {TYPE_2__ spa_mmp; } ;
typedef  TYPE_1__ spa_t ;
typedef  TYPE_2__ mmp_thread_t ;
typedef  int hrtime_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B_FALSE ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  zfs_multihost_interval ; 

__attribute__((used)) static void
FUNC8(spa_t *spa, boolean_t write_completed)
{
	mmp_thread_t *mts = &spa->spa_mmp;
	hrtime_t delay = FUNC5() - mts->mmp_last_write;

	FUNC0(FUNC4(&mts->mmp_io_lock));

	if (FUNC6(spa) == B_FALSE) {
		mts->mmp_delay = 0;
		return;
	}

	if (delay > mts->mmp_delay)
		mts->mmp_delay = delay;

	if (write_completed == B_FALSE)
		return;

	mts->mmp_last_write = FUNC5();

	/*
	 * strictly less than, in case delay was changed above.
	 */
	if (delay < mts->mmp_delay) {
		hrtime_t min_delay =
		    FUNC3(FUNC2(zfs_multihost_interval)) /
		    FUNC1(1, FUNC7(spa));
		mts->mmp_delay = FUNC1(((delay + mts->mmp_delay * 127) / 128),
		    min_delay);
	}
}