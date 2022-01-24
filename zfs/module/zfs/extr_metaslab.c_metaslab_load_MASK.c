#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ms_load_cv; scalar_t__ ms_loading; int /*<<< orphan*/  ms_lock; TYPE_1__* ms_group; scalar_t__ ms_loaded; scalar_t__ ms_flushing; int /*<<< orphan*/  ms_condensing; } ;
typedef  TYPE_2__ metaslab_t ;
struct TYPE_11__ {int /*<<< orphan*/  mc_spa; } ;
struct TYPE_9__ {TYPE_3__* mg_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(metaslab_t *msp)
{
	FUNC0(FUNC1(&msp->ms_lock));

	/*
	 * There may be another thread loading the same metaslab, if that's
	 * the case just wait until the other thread is done and return.
	 */
	FUNC6(msp);
	if (msp->ms_loaded)
		return (0);
	FUNC2(!msp->ms_loading);
	FUNC0(!msp->ms_condensing);

	/*
	 * We set the loading flag BEFORE potentially dropping the lock to
	 * wait for an ongoing flush (see ms_flushing below). This way other
	 * threads know that there is already a thread that is loading this
	 * metaslab.
	 */
	msp->ms_loading = B_TRUE;

	/*
	 * Wait for any in-progress flushing to finish as we drop the ms_lock
	 * both here (during space_map_load()) and in metaslab_flush() (when
	 * we flush our changes to the ms_sm).
	 */
	if (msp->ms_flushing)
		FUNC4(msp);

	/*
	 * In the possibility that we were waiting for the metaslab to be
	 * flushed (where we temporarily dropped the ms_lock), ensure that
	 * no one else loaded the metaslab somehow.
	 */
	FUNC0(!msp->ms_loaded);

	/*
	 * If we're loading a metaslab in the normal class, consider evicting
	 * another one to keep our memory usage under the limit defined by the
	 * zfs_metaslab_mem_limit tunable.
	 */
	if (FUNC8(msp->ms_group->mg_class->mc_spa) ==
	    msp->ms_group->mg_class) {
		FUNC7(msp->ms_group->mg_class);
	}

	int error = FUNC5(msp);

	FUNC0(FUNC1(&msp->ms_lock));
	msp->ms_loading = B_FALSE;
	FUNC3(&msp->ms_load_cv);

	return (error);
}