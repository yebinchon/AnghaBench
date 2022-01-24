#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
struct TYPE_25__ {int /*<<< orphan*/  spa_scrub_lock; int /*<<< orphan*/  spa_scrub_io_cv; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_29__ {scalar_t__ blk_birth; } ;
struct TYPE_26__ {int /*<<< orphan*/  spic_zb; TYPE_7__ spic_bp; TYPE_5__* spic_spc; } ;
typedef  TYPE_4__ scan_prefetch_issue_ctx_t ;
struct TYPE_27__ {TYPE_6__* spc_scn; } ;
typedef  TYPE_5__ scan_prefetch_ctx_t ;
struct TYPE_24__ {scalar_t__ scn_cur_min_txg; } ;
struct TYPE_28__ {int /*<<< orphan*/  scn_prefetch_queue; TYPE_2__ scn_phys; TYPE_1__* scn_dp; } ;
typedef  TYPE_6__ dsl_scan_t ;
typedef  TYPE_7__ blkptr_t ;
typedef  int /*<<< orphan*/  avl_index_t ;
struct TYPE_23__ {TYPE_3__* dp_spa; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 scalar_t__ FUNC1 (TYPE_7__*) ; 
 scalar_t__ FUNC2 (TYPE_7__*) ; 
 scalar_t__ FUNC3 (TYPE_7__*) ; 
 scalar_t__ DMU_OT_DNODE ; 
 scalar_t__ DMU_OT_OBJSET ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_6__*) ; 
 scalar_t__ zfs_no_scrub_prefetch ; 

__attribute__((used)) static void
FUNC14(scan_prefetch_ctx_t *spc, blkptr_t *bp, zbookmark_phys_t *zb)
{
	avl_index_t idx;
	dsl_scan_t *scn = spc->spc_scn;
	spa_t *spa = scn->scn_dp->dp_spa;
	scan_prefetch_issue_ctx_t *spic;

	if (zfs_no_scrub_prefetch || FUNC3(bp))
		return;

	if (FUNC2(bp) || bp->blk_birth <= scn->scn_phys.scn_cur_min_txg ||
	    (FUNC0(bp) == 0 && FUNC1(bp) != DMU_OT_DNODE &&
	    FUNC1(bp) != DMU_OT_OBJSET))
		return;

	if (FUNC7(spc, zb))
		return;

	FUNC12(spc, scn);
	spic = FUNC8(sizeof (scan_prefetch_issue_ctx_t), KM_SLEEP);
	spic->spic_spc = spc;
	spic->spic_bp = *bp;
	spic->spic_zb = *zb;

	/*
	 * Add the IO to the queue of blocks to prefetch. This allows us to
	 * prioritize blocks that we will need first for the main traversal
	 * thread.
	 */
	FUNC10(&spa->spa_scrub_lock);
	if (FUNC4(&scn->scn_prefetch_queue, spic, &idx) != NULL) {
		/* this block is already queued for prefetch */
		FUNC9(spic, sizeof (scan_prefetch_issue_ctx_t));
		FUNC13(spc, scn);
		FUNC11(&spa->spa_scrub_lock);
		return;
	}

	FUNC5(&scn->scn_prefetch_queue, spic, idx);
	FUNC6(&spa->spa_scrub_io_cv);
	FUNC11(&spa->spa_scrub_lock);
}