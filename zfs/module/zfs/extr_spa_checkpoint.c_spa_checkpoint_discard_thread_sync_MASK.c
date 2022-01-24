#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  vdev_top_zap; int /*<<< orphan*/  vdev_spa; int /*<<< orphan*/ * vdev_checkpoint_sm; int /*<<< orphan*/  vdev_id; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint64_t ;
struct TYPE_10__ {int sdc_entry_limit; int /*<<< orphan*/  sdc_txg; TYPE_1__* sdc_vd; } ;
typedef  TYPE_2__ spa_checkpoint_discard_sync_callback_arg_t ;
struct TYPE_11__ {int /*<<< orphan*/  tx_txg; } ;
typedef  TYPE_3__ dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int /*<<< orphan*/  VDEV_TOP_ZAP_POOL_CHECKPOINT_SM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_checkpoint_discard_sync_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ) ; 
 int zfs_spa_discard_memory_limit ; 

__attribute__((used)) static void
FUNC12(void *arg, dmu_tx_t *tx)
{
	vdev_t *vd = arg;
	int error;

	/*
	 * The space map callback is applied only to non-debug entries.
	 * Because the number of debug entries is less or equal to the
	 * number of non-debug entries, we want to ensure that we only
	 * read what we prefetched from open-context.
	 *
	 * Thus, we set the maximum entries that the space map callback
	 * will be applied to be half the entries that could fit in the
	 * imposed memory limit.
	 *
	 * Note that since this is a conservative estimate we also
	 * assume the worst case scenario in our computation where each
	 * entry is two-word.
	 */
	uint64_t max_entry_limit =
	    (zfs_spa_discard_memory_limit / (2 * sizeof (uint64_t))) >> 1;

	/*
	 * Iterate from the end of the space map towards the beginning,
	 * placing its entries on ms_freeing and removing them from the
	 * space map. The iteration stops if one of the following
	 * conditions is true:
	 *
	 * 1] We reached the beginning of the space map. At this point
	 *    the space map should be completely empty and
	 *    space_map_incremental_destroy should have returned 0.
	 *    The next step would be to free and close the space map
	 *    and remove its entry from its vdev's top zap. This allows
	 *    spa_checkpoint_discard_thread() to move on to the next vdev.
	 *
	 * 2] We reached the memory limit (amount of memory used to hold
	 *    space map entries in memory) and space_map_incremental_destroy
	 *    returned EINTR. This means that there are entries remaining
	 *    in the space map that will be cleared in a future invocation
	 *    of this function by spa_checkpoint_discard_thread().
	 */
	spa_checkpoint_discard_sync_callback_arg_t sdc;
	sdc.sdc_vd = vd;
	sdc.sdc_txg = tx->tx_txg;
	sdc.sdc_entry_limit = max_entry_limit;

	uint64_t words_before =
	    FUNC8(vd->vdev_checkpoint_sm) / sizeof (uint64_t);

	error = FUNC7(vd->vdev_checkpoint_sm,
	    spa_checkpoint_discard_sync_callback, &sdc, tx);

	uint64_t words_after =
	    FUNC8(vd->vdev_checkpoint_sm) / sizeof (uint64_t);

#ifdef ZFS_DEBUG
	spa_checkpoint_accounting_verify(vd->vdev_spa);
#endif

	FUNC10("discarding checkpoint: txg %llu, vdev id %d, "
	    "deleted %llu words - %llu words are left",
	    tx->tx_txg, vd->vdev_id, (words_before - words_after),
	    words_after);

	if (error != EINTR) {
		if (error != 0) {
			FUNC11("zfs: error %d was returned "
			    "while incrementally destroying the checkpoint "
			    "space map of vdev %llu\n",
			    error, vd->vdev_id);
		}
		FUNC0(words_after);
		FUNC0(FUNC4(vd->vdev_checkpoint_sm));
		FUNC0(FUNC8(vd->vdev_checkpoint_sm));

		FUNC6(vd->vdev_checkpoint_sm, tx);
		FUNC5(vd->vdev_checkpoint_sm);
		vd->vdev_checkpoint_sm = NULL;

		FUNC1(FUNC9(FUNC3(vd->vdev_spa),
		    vd->vdev_top_zap, VDEV_TOP_ZAP_POOL_CHECKPOINT_SM, tx));
	}
}