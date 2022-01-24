#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ scn_func; } ;
struct TYPE_7__ {TYPE_3__* scn_dp; TYPE_1__ scn_phys; scalar_t__ scn_sync_start_time; } ;
typedef  TYPE_2__ dsl_scan_t ;
typedef  int boolean_t ;
struct TYPE_9__ {scalar_t__ spa_sync_starttime; } ;
struct TYPE_8__ {int dp_dirty_total; TYPE_4__* dp_spa; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ POOL_SCAN_RESILVER ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int zfs_dirty_data_max ; 
 int zfs_resilver_min_time_ms ; 
 int zfs_scrub_min_time_ms ; 
 scalar_t__ zfs_txg_timeout ; 
 int zfs_vdev_async_write_active_min_dirty_percent ; 

__attribute__((used)) static boolean_t
FUNC5(dsl_scan_t *scn)
{
	/* See comment in dsl_scan_check_suspend() */
	uint64_t curr_time_ns = FUNC2();
	uint64_t scan_time_ns = curr_time_ns - scn->scn_sync_start_time;
	uint64_t sync_time_ns = curr_time_ns -
	    scn->scn_dp->dp_spa->spa_sync_starttime;
	int dirty_pct = scn->scn_dp->dp_dirty_total * 100 / zfs_dirty_data_max;
	int mintime = (scn->scn_phys.scn_func == POOL_SCAN_RESILVER) ?
	    zfs_resilver_min_time_ms : zfs_scrub_min_time_ms;

	return ((FUNC0(scan_time_ns) > mintime &&
	    (dirty_pct >= zfs_vdev_async_write_active_min_dirty_percent ||
	    FUNC4(scn->scn_dp) ||
	    FUNC1(sync_time_ns) >= zfs_txg_timeout)) ||
	    FUNC3(scn->scn_dp->dp_spa));
}