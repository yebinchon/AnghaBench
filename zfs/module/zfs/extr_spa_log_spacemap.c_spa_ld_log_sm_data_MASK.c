#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct spa_ld_log_sm_arg {int /*<<< orphan*/  slls_txg; TYPE_3__* slls_spa; } ;
typedef  int /*<<< orphan*/  space_map_t ;
struct TYPE_21__ {int sus_nblocks; int sus_memused; } ;
struct TYPE_22__ {TYPE_2__ spa_unflushed_stats; int /*<<< orphan*/  spa_metaslabs_by_flushed; int /*<<< orphan*/  spa_sm_logs_by_txg; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_23__ {int sls_nblocks; int ms_weight; int /*<<< orphan*/  ms_lock; int /*<<< orphan*/ * ms_sm; int /*<<< orphan*/  ms_unflushed_frees; TYPE_1__* ms_group; int /*<<< orphan*/  ms_unflushed_allocs; scalar_t__ ms_allocated_space; int /*<<< orphan*/  sls_mscount; int /*<<< orphan*/  sls_txg; scalar_t__ sls_sm_obj; } ;
typedef  TYPE_4__ spa_log_sm_t ;
typedef  TYPE_4__ metaslab_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int hrtime_t ;
struct TYPE_20__ {int /*<<< orphan*/  mg_class; int /*<<< orphan*/ * mg_vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int METASLAB_ACTIVE_MASK ; 
 int /*<<< orphan*/  SPA_MINBLOCKSHIFT ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 scalar_t__ metaslab_debug_load ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_ld_log_sm_cb ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spa_ld_log_sm_arg*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ zfs_log_sm_blksz ; 

__attribute__((used)) static int
FUNC26(spa_t *spa)
{
	int error = 0;

	/*
	 * If we are not going to do any writes there is no need
	 * to read the log space maps.
	 */
	if (!FUNC18(spa))
		return (0);

	FUNC0(spa->spa_unflushed_stats.sus_nblocks);
	FUNC0(spa->spa_unflushed_stats.sus_memused);

	hrtime_t read_logs_starttime = FUNC5();
	/* this is a no-op when we don't have space map logs */
	for (spa_log_sm_t *sls = FUNC3(&spa->spa_sm_logs_by_txg);
	    sls; sls = FUNC1(&spa->spa_sm_logs_by_txg, sls)) {
		space_map_t *sm = NULL;
		error = FUNC24(&sm, FUNC17(spa),
		    sls->sls_sm_obj, 0, UINT64_MAX, SPA_MINBLOCKSHIFT);
		if (error != 0) {
			FUNC14(spa, "spa_ld_log_sm_data(): failed at "
			    "space_map_open(obj=%llu) [error %d]",
			    (u_longlong_t)sls->sls_sm_obj, error);
			goto out;
		}

		struct spa_ld_log_sm_arg vla = {
			.slls_spa = spa,
			.slls_txg = sls->sls_txg
		};
		error = FUNC21(sm, FUNC22(sm),
		    spa_ld_log_sm_cb, &vla);
		if (error != 0) {
			FUNC20(sm);
			FUNC14(spa, "spa_ld_log_sm_data(): failed "
			    "at space_map_iterate(obj=%llu) [error %d]",
			    (u_longlong_t)sls->sls_sm_obj, error);
			goto out;
		}

		FUNC0(sls->sls_nblocks);
		sls->sls_nblocks = FUNC23(sm);
		spa->spa_unflushed_stats.sus_nblocks += sls->sls_nblocks;
		FUNC25(spa, sls->sls_txg,
		    sls->sls_mscount, sls->sls_nblocks);

		FUNC20(sm);
	}
	hrtime_t read_logs_endtime = FUNC5();
	FUNC15(spa,
	    "read %llu log space maps (%llu total blocks - blksz = %llu bytes) "
	    "in %lld ms", (u_longlong_t)FUNC4(&spa->spa_sm_logs_by_txg),
	    (u_longlong_t)FUNC16(spa),
	    (u_longlong_t)zfs_log_sm_blksz,
	    (longlong_t)((read_logs_endtime - read_logs_starttime) / 1000000));

out:
	/*
	 * Now that the metaslabs contain their unflushed changes:
	 * [1] recalculate their actual allocated space
	 * [2] recalculate their weights
	 * [3] sum up the memory usage of their unflushed range trees
	 * [4] optionally load them, if debug_load is set
	 *
	 * Note that even in the case where we get here because of an
	 * error (e.g. error != 0), we still want to update the fields
	 * below in order to have a proper teardown in spa_unload().
	 */
	for (metaslab_t *m = FUNC3(&spa->spa_metaslabs_by_flushed);
	    m != NULL; m = FUNC1(&spa->spa_metaslabs_by_flushed, m)) {
		FUNC11(&m->ms_lock);
		m->ms_allocated_space = FUNC19(m->ms_sm) +
		    FUNC13(m->ms_unflushed_allocs) -
		    FUNC13(m->ms_unflushed_frees);

		vdev_t *vd = m->ms_group->mg_vd;
		FUNC9(vd, m->ms_group->mg_class,
		    FUNC13(m->ms_unflushed_allocs), 0, 0);
		FUNC9(vd, m->ms_group->mg_class,
		    -FUNC13(m->ms_unflushed_frees), 0, 0);

		FUNC0(m->ms_weight & METASLAB_ACTIVE_MASK);
		FUNC7(m);

		spa->spa_unflushed_stats.sus_memused +=
		    FUNC10(m);

		if (metaslab_debug_load && m->ms_sm != NULL) {
			FUNC2(FUNC6(m));
			FUNC8(m, 0);
		}
		FUNC12(&m->ms_lock);
	}

	return (error);
}