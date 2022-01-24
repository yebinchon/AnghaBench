#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * vdev_spa; } ;
typedef  TYPE_4__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  space_map_phys_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_16__ {TYPE_2__* ms_sm; int /*<<< orphan*/  ms_max_size; scalar_t__ ms_loaded; int /*<<< orphan*/  ms_lock; TYPE_3__* ms_group; } ;
typedef  TYPE_5__ metaslab_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_14__ {TYPE_4__* mg_vd; } ;
struct TYPE_13__ {TYPE_1__* sm_dbuf; } ;
struct TYPE_12__ {int db_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPA_FEATURE_SPACEMAP_HISTOGRAM ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ zfs_metaslab_segment_weight_enabled ; 

__attribute__((used)) static uint64_t
FUNC9(metaslab_t *msp, boolean_t nodirty)
{
	vdev_t *vd = msp->ms_group->mg_vd;
	spa_t *spa = vd->vdev_spa;
	uint64_t weight;

	FUNC0(FUNC2(&msp->ms_lock));

	FUNC6(msp, nodirty);

	/*
	 * Update the maximum size. If the metaslab is loaded, this will
	 * ensure that we get an accurate maximum size if newly freed space
	 * has been added back into the free tree. If the metaslab is
	 * unloaded, we check if there's a larger free segment in the
	 * unflushed frees. This is a lower bound on the largest allocatable
	 * segment size. Coalescing of adjacent entries may reveal larger
	 * allocatable segments, but we aren't aware of those until loading
	 * the space map into a range tree.
	 */
	if (msp->ms_loaded) {
		msp->ms_max_size = FUNC3(msp);
	} else {
		msp->ms_max_size = FUNC1(msp->ms_max_size,
		    FUNC4(msp));
	}

	/*
	 * Segment-based weighting requires space map histogram support.
	 */
	if (zfs_metaslab_segment_weight_enabled &&
	    FUNC8(spa, SPA_FEATURE_SPACEMAP_HISTOGRAM) &&
	    (msp->ms_sm == NULL || msp->ms_sm->sm_dbuf->db_size ==
	    sizeof (space_map_phys_t))) {
		weight = FUNC5(msp);
	} else {
		weight = FUNC7(msp);
	}
	return (weight);
}