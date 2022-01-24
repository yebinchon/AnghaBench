#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* zc_objset_type; void* zc_cookie; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/  ds_sendstream_lock; int /*<<< orphan*/  ds_sendstreams; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_12__ {scalar_t__ dss_proc; int /*<<< orphan*/  volatile dss_blocks; scalar_t__ dss_off; void* dss_outfd; } ;
typedef  TYPE_3__ dmu_sendstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/  volatile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ curproc ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(zfs_cmd_t *zc)
{
	dsl_pool_t *dp;
	dsl_dataset_t *ds;
	dmu_sendstatus_t *dsp = NULL;
	int error;

	error = FUNC4(zc->zc_name, FTAG, &dp);
	if (error != 0)
		return (error);

	error = FUNC2(dp, zc->zc_name, FTAG, &ds);
	if (error != 0) {
		FUNC5(dp, FTAG);
		return (error);
	}

	FUNC8(&ds->ds_sendstream_lock);

	/*
	 * Iterate over all the send streams currently active on this dataset.
	 * If there's one which matches the specified file descriptor _and_ the
	 * stream was started by the current process, return the progress of
	 * that stream.
	 */

	for (dsp = FUNC6(&ds->ds_sendstreams); dsp != NULL;
	    dsp = FUNC7(&ds->ds_sendstreams, dsp)) {
		if (dsp->dss_outfd == zc->zc_cookie &&
		    dsp->dss_proc == curproc)
			break;
	}

	if (dsp != NULL) {
		zc->zc_cookie = FUNC1((volatile uint64_t *)dsp->dss_off,
		    0, 0);
		/* This is the closest thing we have to atomic_read_64. */
		zc->zc_objset_type = FUNC1(&dsp->dss_blocks, 0, 0);
	} else {
		error = FUNC0(ENOENT);
	}

	FUNC9(&ds->ds_sendstream_lock);
	FUNC3(ds, FTAG);
	FUNC5(dp, FTAG);
	return (error);
}