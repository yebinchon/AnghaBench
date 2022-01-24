#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_8__ {size_t spa_syncing_txg; int /*<<< orphan*/ * spa_free_bplist; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  SPA_FEATURE_LOG_SPACEMAP ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ zfs_sync_pass_deferred_free ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(spa_t *spa, uint64_t txg, const blkptr_t *bp)
{

	FUNC8(spa, bp, B_FALSE);

	/*
	 * The check for EMBEDDED is a performance optimization.  We
	 * process the free here (by ignoring it) rather than
	 * putting it on the list and then processing it in zio_free_sync().
	 */
	if (FUNC1(bp))
		return;
	FUNC5(spa, bp);

	/*
	 * Frees that are for the currently-syncing txg, are not going to be
	 * deferred, and which will not need to do a read (i.e. not GANG or
	 * DEDUP), can be processed immediately.  Otherwise, put them on the
	 * in-memory list for later processing.
	 *
	 * Note that we only defer frees after zfs_sync_pass_deferred_free
	 * when the log space map feature is disabled. [see relevant comment
	 * in spa_sync_iterate_to_convergence()]
	 */
	if (FUNC2(bp) ||
	    FUNC0(bp) ||
	    txg != spa->spa_syncing_txg ||
	    (FUNC7(spa) >= zfs_sync_pass_deferred_free &&
	    !FUNC6(spa, SPA_FEATURE_LOG_SPACEMAP))) {
		FUNC4(&spa->spa_free_bplist[txg & TXG_MASK], bp);
	} else {
		FUNC3(FUNC10(FUNC9(NULL, spa, txg, bp, 0)));
	}
}