#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_btree_t ;
typedef  int /*<<< orphan*/  zfs_btree_index_t ;
struct TYPE_15__ {scalar_t__ vdev_leaf_zap; size_t vdev_trim_bytes_est; size_t vdev_trim_bytes_done; scalar_t__ vdev_trim_last_offset; TYPE_1__* vdev_top; int /*<<< orphan*/  vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_16__ {int /*<<< orphan*/  rt_root; } ;
typedef  TYPE_3__ range_tree_t ;
typedef  int /*<<< orphan*/  range_seg_t ;
struct TYPE_17__ {scalar_t__ rs_start; scalar_t__ rs_end; } ;
typedef  TYPE_4__ range_seg64_t ;
struct TYPE_18__ {size_t ms_size; scalar_t__ ms_start; int /*<<< orphan*/  ms_lock; TYPE_3__* ms_allocatable; } ;
typedef  TYPE_5__ metaslab_t ;
struct TYPE_14__ {size_t vdev_ms_count; size_t vdev_children; int /*<<< orphan*/ * vdev_ops; TYPE_5__** vdev_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_raidz_ops ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(vdev_t *vd)
{
	FUNC0(FUNC8(vd->vdev_spa, SCL_CONFIG, RW_READER) ||
	    FUNC8(vd->vdev_spa, SCL_CONFIG, RW_WRITER));
	FUNC0(vd->vdev_leaf_zap != 0);

	vd->vdev_trim_bytes_est = 0;
	vd->vdev_trim_bytes_done = 0;

	for (uint64_t i = 0; i < vd->vdev_top->vdev_ms_count; i++) {
		metaslab_t *msp = vd->vdev_top->vdev_ms[i];
		FUNC4(&msp->ms_lock);

		uint64_t ms_free = msp->ms_size -
		    FUNC2(msp);

		if (vd->vdev_top->vdev_ops == &vdev_raidz_ops)
			ms_free /= vd->vdev_top->vdev_children;

		/*
		 * Convert the metaslab range to a physical range
		 * on our vdev. We use this to determine if we are
		 * in the middle of this metaslab range.
		 */
		range_seg64_t logical_rs, physical_rs;
		logical_rs.rs_start = msp->ms_start;
		logical_rs.rs_end = msp->ms_start + msp->ms_size;
		FUNC9(vd, &logical_rs, &physical_rs);

		if (vd->vdev_trim_last_offset <= physical_rs.rs_start) {
			vd->vdev_trim_bytes_est += ms_free;
			FUNC5(&msp->ms_lock);
			continue;
		} else if (vd->vdev_trim_last_offset > physical_rs.rs_end) {
			vd->vdev_trim_bytes_done += ms_free;
			vd->vdev_trim_bytes_est += ms_free;
			FUNC5(&msp->ms_lock);
			continue;
		}

		/*
		 * If we get here, we're in the middle of trimming this
		 * metaslab.  Load it and walk the free tree for more
		 * accurate progress estimation.
		 */
		FUNC1(FUNC3(msp));

		range_tree_t *rt = msp->ms_allocatable;
		zfs_btree_t *bt = &rt->rt_root;
		zfs_btree_index_t idx;
		for (range_seg_t *rs = FUNC10(bt, &idx);
		    rs != NULL; rs = FUNC11(bt, &idx, &idx)) {
			logical_rs.rs_start = FUNC7(rs, rt);
			logical_rs.rs_end = FUNC6(rs, rt);
			FUNC9(vd, &logical_rs, &physical_rs);

			uint64_t size = physical_rs.rs_end -
			    physical_rs.rs_start;
			vd->vdev_trim_bytes_est += size;
			if (vd->vdev_trim_last_offset >= physical_rs.rs_end) {
				vd->vdev_trim_bytes_done += size;
			} else if (vd->vdev_trim_last_offset >
			    physical_rs.rs_start &&
			    vd->vdev_trim_last_offset <=
			    physical_rs.rs_end) {
				vd->vdev_trim_bytes_done +=
				    vd->vdev_trim_last_offset -
				    physical_rs.rs_start;
			}
		}
		FUNC5(&msp->ms_lock);
	}
}