#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  zcb_removing_size; } ;
typedef  TYPE_1__ zdb_cb_t ;
struct TYPE_23__ {size_t vdev_ms_count; scalar_t__ vdev_asize; TYPE_6__** vdev_ms; int /*<<< orphan*/ * vdev_indirect_mapping; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_indirect_mapping_t ;
typedef  size_t uint64_t ;
struct TYPE_24__ {TYPE_2__* svr_allocd_segs; int /*<<< orphan*/  svr_vdev_id; } ;
typedef  TYPE_3__ spa_vdev_removal_t ;
struct TYPE_25__ {TYPE_3__* spa_vdev_removal; } ;
typedef  TYPE_4__ spa_t ;
typedef  TYPE_2__ range_tree_t ;
struct TYPE_26__ {scalar_t__ ms_start; int /*<<< orphan*/ * ms_sm; } ;
typedef  TYPE_6__ metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RANGE_SEG64 ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  SM_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  claim_segment_cb ; 
 scalar_t__* dump_opt ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  load_unflushed_svr_segs_cb ; 
 int /*<<< orphan*/  range_tree_add ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(spa_t *spa, zdb_cb_t *zcb)
{
	if (dump_opt['L'])
		return;

	if (spa->spa_vdev_removal == NULL)
		return;

	FUNC8(spa, SCL_CONFIG, FTAG, RW_READER);

	spa_vdev_removal_t *svr = spa->spa_vdev_removal;
	vdev_t *vd = FUNC12(spa, svr->svr_vdev_id);
	vdev_indirect_mapping_t *vim = vd->vdev_indirect_mapping;

	FUNC0(FUNC6(svr->svr_allocd_segs));

	range_tree_t *allocs = FUNC4(NULL, RANGE_SEG64, NULL, 0, 0);
	for (uint64_t msi = 0; msi < vd->vdev_ms_count; msi++) {
		metaslab_t *msp = vd->vdev_ms[msi];

		if (msp->ms_start >= FUNC11(vim))
			break;

		FUNC0(FUNC6(allocs));
		if (msp->ms_sm != NULL)
			FUNC1(FUNC10(msp->ms_sm, allocs, SM_ALLOC));
		FUNC7(allocs, range_tree_add, svr->svr_allocd_segs);
	}
	FUNC5(allocs);

	FUNC2(spa, load_unflushed_svr_segs_cb, svr);

	/*
	 * Clear everything past what has been synced,
	 * because we have not allocated mappings for
	 * it yet.
	 */
	FUNC3(svr->svr_allocd_segs,
	    FUNC11(vim),
	    vd->vdev_asize - FUNC11(vim));

	zcb->zcb_removing_size += FUNC6(svr->svr_allocd_segs);
	FUNC7(svr->svr_allocd_segs, claim_segment_cb, vd);

	FUNC9(spa, SCL_CONFIG, FTAG);
}