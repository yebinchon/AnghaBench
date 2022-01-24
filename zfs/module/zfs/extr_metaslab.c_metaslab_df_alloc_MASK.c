#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_btree_index_t ;
typedef  int uint64_t ;
struct TYPE_12__ {TYPE_3__* rt_arg; } ;
typedef  TYPE_1__ range_tree_t ;
typedef  int /*<<< orphan*/  range_seg_t ;
struct TYPE_13__ {int* ms_lbas; int ms_size; int /*<<< orphan*/  ms_start; int /*<<< orphan*/  ms_allocatable_by_size; TYPE_1__* ms_allocatable; int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_2__ metaslab_t ;
struct TYPE_14__ {int mra_floor_shift; } ;
typedef  TYPE_3__ metaslab_rt_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ metaslab_df_alloc_threshold ; 
 int metaslab_df_free_pct ; 
 int /*<<< orphan*/  metaslab_df_max_search ; 
 scalar_t__ metaslab_df_use_largest_segment ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  metaslabstat_df_find_under_floor ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC13(metaslab_t *msp, uint64_t size)
{
	/*
	 * Find the largest power of 2 block size that evenly divides the
	 * requested size. This is used to try to allocate blocks with similar
	 * alignment from the same area of the metaslab (i.e. same cursor
	 * bucket) but it does not guarantee that other allocations sizes
	 * may exist in the same region.
	 */
	uint64_t align = size & -size;
	uint64_t *cursor = &msp->ms_lbas[FUNC3(align) - 1];
	range_tree_t *rt = msp->ms_allocatable;
	int free_pct = FUNC8(rt) * 100 / msp->ms_size;
	uint64_t offset;

	FUNC0(FUNC2(&msp->ms_lock));

	/*
	 * If we're running low on space, find a segment based on size,
	 * rather than iterating based on offset.
	 */
	if (FUNC6(msp) < metaslab_df_alloc_threshold ||
	    free_pct < metaslab_df_free_pct) {
		offset = -1;
	} else {
		offset = FUNC5(rt,
		    cursor, size, metaslab_df_max_search);
	}

	if (offset == -1) {
		range_seg_t *rs;
		if (FUNC12(&msp->ms_allocatable_by_size) == 0)
			FUNC7(msp->ms_allocatable);
		if (metaslab_df_use_largest_segment) {
			/* use largest free segment */
			rs = FUNC11(&msp->ms_allocatable_by_size, NULL);
		} else {
			zfs_btree_index_t where;
			/* use segment of this size, or next largest */
#ifdef _METASLAB_TRACING
			metaslab_rt_arg_t *mrap = msp->ms_allocatable->rt_arg;
			if (size < (1 << mrap->mra_floor_shift)) {
				METASLABSTAT_BUMP(
				    metaslabstat_df_find_under_floor);
			}
#endif
			rs = FUNC4(&msp->ms_allocatable_by_size,
			    rt, msp->ms_start, size, &where);
		}
		if (rs != NULL && FUNC10(rs, rt) + size <= FUNC9(rs,
		    rt)) {
			offset = FUNC10(rs, rt);
			*cursor = offset + size;
		}
	}

	return (offset);
}