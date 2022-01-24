#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  zb_ditto_3_of_3_samevdev; int /*<<< orphan*/  zb_ditto_2_of_3_samevdev; int /*<<< orphan*/  zb_ditto_2_of_2_samevdev; int /*<<< orphan*/  zb_gangs; int /*<<< orphan*/  zb_psize; int /*<<< orphan*/  zb_lsize; int /*<<< orphan*/  zb_asize; int /*<<< orphan*/  zb_count; } ;
typedef  TYPE_2__ zfs_blkstat_t ;
struct TYPE_20__ {int /*<<< orphan*/  zab_lock; TYPE_2__** zab_type; } ;
typedef  TYPE_3__ zfs_all_blkstats_t ;
struct TYPE_21__ {int /*<<< orphan*/  spa_scan_pass_issued; } ;
typedef  TYPE_4__ spa_t ;
struct TYPE_22__ {TYPE_1__* scn_dp; scalar_t__ scn_is_sorted; } ;
typedef  TYPE_5__ dsl_scan_t ;
struct TYPE_23__ {int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_6__ blkptr_t ;
struct TYPE_18__ {TYPE_4__* dp_spa; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__ const*) ; 
 scalar_t__ FUNC1 (TYPE_6__ const*) ; 
 int FUNC2 (TYPE_6__ const*) ; 
 scalar_t__ FUNC3 (TYPE_6__ const*) ; 
 int FUNC4 (TYPE_6__ const*) ; 
 scalar_t__ FUNC5 (TYPE_6__ const*) ; 
 int FUNC6 (TYPE_6__ const*) ; 
 scalar_t__ FUNC7 (TYPE_6__ const*) ; 
 int DMU_OT_NEWTYPE ; 
 int DMU_OT_OTHER ; 
 int DMU_OT_TOTAL ; 
 int DN_MAX_LEVELS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(dsl_scan_t *scn, zfs_all_blkstats_t *zab, const blkptr_t *bp)
{
	int i;

	/*
	 * Don't count embedded bp's, since we already did the work of
	 * scanning these when we scanned the containing block.
	 */
	if (FUNC7(bp))
		return;

	/*
	 * Update the spa's stats on how many bytes we have issued.
	 * Sequential scrubs create a zio for each DVA of the bp. Each
	 * of these will include all DVAs for repair purposes, but the
	 * zio code will only try the first one unless there is an issue.
	 * Therefore, we should only count the first DVA for these IOs.
	 */
	if (scn->scn_is_sorted) {
		FUNC10(&scn->scn_dp->dp_spa->spa_scan_pass_issued,
		    FUNC8(&bp->blk_dva[0]));
	} else {
		spa_t *spa = scn->scn_dp->dp_spa;

		for (i = 0; i < FUNC4(bp); i++) {
			FUNC10(&spa->spa_scan_pass_issued,
			    FUNC8(&bp->blk_dva[i]));
		}
	}

	/*
	 * If we resume after a reboot, zab will be NULL; don't record
	 * incomplete stats in that case.
	 */
	if (zab == NULL)
		return;

	FUNC11(&zab->zab_lock);

	for (i = 0; i < 4; i++) {
		int l = (i < 2) ? FUNC2(bp) : DN_MAX_LEVELS;
		int t = (i & 1) ? FUNC6(bp) : DMU_OT_TOTAL;

		if (t & DMU_OT_NEWTYPE)
			t = DMU_OT_OTHER;
		zfs_blkstat_t *zb = &zab->zab_type[l][t];
		int equal;

		zb->zb_count++;
		zb->zb_asize += FUNC1(bp);
		zb->zb_lsize += FUNC3(bp);
		zb->zb_psize += FUNC5(bp);
		zb->zb_gangs += FUNC0(bp);

		switch (FUNC4(bp)) {
		case 2:
			if (FUNC9(&bp->blk_dva[0]) ==
			    FUNC9(&bp->blk_dva[1]))
				zb->zb_ditto_2_of_2_samevdev++;
			break;
		case 3:
			equal = (FUNC9(&bp->blk_dva[0]) ==
			    FUNC9(&bp->blk_dva[1])) +
			    (FUNC9(&bp->blk_dva[0]) ==
			    FUNC9(&bp->blk_dva[2])) +
			    (FUNC9(&bp->blk_dva[1]) ==
			    FUNC9(&bp->blk_dva[2]));
			if (equal == 1)
				zb->zb_ditto_2_of_3_samevdev++;
			else if (equal == 3)
				zb->zb_ditto_3_of_3_samevdev++;
			break;
		}
	}

	FUNC12(&zab->zab_lock);
}