#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zthr_t ;
typedef  void* uint64_t ;
struct TYPE_14__ {TYPE_1__* ds; int /*<<< orphan*/  syncing; TYPE_5__* next; TYPE_5__* first; } ;
struct TYPE_15__ {TYPE_2__ spa_to_condense; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_16__ {int /*<<< orphan*/  to_keep; void* next_size; void* first_size; TYPE_3__* spa; } ;
typedef  TYPE_4__ livelist_condense_arg_t ;
struct TYPE_17__ {int /*<<< orphan*/  dle_bpobj; } ;
typedef  TYPE_5__ dsl_deadlist_entry_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_18__ {int /*<<< orphan*/  dp_mos_dir; } ;
struct TYPE_13__ {int /*<<< orphan*/  ds_dbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int EINTR ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int TXG_NOTHROTTLE ; 
 int TXG_NOWAIT ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int) ; 
 TYPE_6__* FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  spa_livelist_condense_sync ; 
 scalar_t__ zfs_livelist_condense_sync_pause ; 
 int /*<<< orphan*/  zfs_livelist_condense_zthr_cancel ; 
 scalar_t__ zfs_livelist_condense_zthr_pause ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 

void
FUNC18(void *arg, zthr_t *t)
{
	while (zfs_livelist_condense_zthr_pause &&
	    !(FUNC16(t) || FUNC17(t)))
		FUNC4(1);

	spa_t *spa = arg;
	dsl_deadlist_entry_t *first = spa->spa_to_condense.first;
	dsl_deadlist_entry_t *next = spa->spa_to_condense.next;
	uint64_t first_size, next_size;

	livelist_condense_arg_t *lca =
	    FUNC13(sizeof (livelist_condense_arg_t), KM_SLEEP);
	FUNC2(&lca->to_keep);

	/*
	 * Process the livelists (matching FREEs and ALLOCs) in open context
	 * so we have minimal work in syncing context to condense.
	 *
	 * We save bpobj sizes (first_size and next_size) to use later in
	 * syncing context to determine if entries were added to these sublists
	 * while in open context. This is possible because the clone is still
	 * active and open for normal writes and we want to make sure the new,
	 * unprocessed blockpointers are inserted into the livelist normally.
	 *
	 * Note that dsl_process_sub_livelist() both stores the size number of
	 * blockpointers and iterates over them while the bpobj's lock held, so
	 * the sizes returned to us are consistent which what was actually
	 * processed.
	 */
	int err = FUNC11(&first->dle_bpobj, &lca->to_keep, t,
	    &first_size);
	if (err == 0)
		err = FUNC11(&next->dle_bpobj, &lca->to_keep,
		    t, &next_size);

	if (err == 0) {
		while (zfs_livelist_condense_sync_pause &&
		    !(FUNC16(t) || FUNC17(t)))
			FUNC4(1);

		dmu_tx_t *tx = FUNC8(FUNC15(spa)->dp_mos_dir);
		FUNC10(tx);
		FUNC9(tx, 1);
		err = FUNC6(tx, TXG_NOWAIT | TXG_NOTHROTTLE);
		if (err == 0) {
			/*
			 * Prevent the condense zthr restarting before
			 * the synctask completes.
			 */
			spa->spa_to_condense.syncing = B_TRUE;
			lca->spa = spa;
			lca->first_size = first_size;
			lca->next_size = next_size;
			FUNC12(FUNC15(spa),
			    spa_livelist_condense_sync, lca, 0,
			    ZFS_SPACE_CHECK_NONE, tx);
			FUNC7(tx);
			return;
		}
	}
	/*
	 * Condensing can not continue: either it was externally stopped or
	 * we were unable to assign to a tx because the pool has run out of
	 * space. In the second case, we'll just end up trying to condense
	 * again in a later txg.
	 */
	FUNC0(err != 0);
	FUNC1(&lca->to_keep);
	FUNC3(&lca->to_keep);
	FUNC14(lca, sizeof (livelist_condense_arg_t));
	FUNC5(spa->spa_to_condense.ds->ds_dbuf, spa);
	spa->spa_to_condense.ds = NULL;
	if (err == EINTR)
		zfs_livelist_condense_zthr_cancel++;
}