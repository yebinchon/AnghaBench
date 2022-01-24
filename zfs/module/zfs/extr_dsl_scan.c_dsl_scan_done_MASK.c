#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_28__ {scalar_t__ spa_errata; int /*<<< orphan*/  spa_root_vdev; void* spa_scrub_active; void* spa_scrub_started; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_27__ {scalar_t__ scn_queue_obj; int /*<<< orphan*/  scn_end_time; scalar_t__ scn_min_txg; int /*<<< orphan*/  scn_max_txg; int /*<<< orphan*/  scn_state; int /*<<< orphan*/  scn_flags; } ;
struct TYPE_29__ {TYPE_1__ scn_phys; int /*<<< orphan*/ * scn_taskq; void* scn_is_sorted; TYPE_4__* scn_dp; } ;
typedef  TYPE_3__ dsl_scan_t ;
struct TYPE_30__ {int /*<<< orphan*/  dp_meta_objset; TYPE_2__* dp_spa; } ;
typedef  TYPE_4__ dsl_pool_t ;
struct TYPE_31__ {int /*<<< orphan*/  tx_txg; } ;
typedef  TYPE_5__ dmu_tx_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DSF_SCRUB_PAUSED ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  DSS_CANCELED ; 
 int /*<<< orphan*/  DSS_FINISHED ; 
 int /*<<< orphan*/  ESC_ZFS_RESILVER_FINISH ; 
 int /*<<< orphan*/  ESC_ZFS_SCRUB_FINISH ; 
 int /*<<< orphan*/  SPA_ASYNC_RESILVER ; 
 int /*<<< orphan*/  SPA_ASYNC_RESILVER_DONE ; 
 int /*<<< orphan*/  SPA_FEATURE_POOL_CHECKPOINT ; 
 int /*<<< orphan*/  SPA_FEATURE_RESILVER_DEFER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZPOOL_ERRATA_ZOL_2094_SCRUB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,TYPE_5__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,char*,TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,TYPE_5__*) ; 

__attribute__((used)) static void
FUNC22(dsl_scan_t *scn, boolean_t complete, dmu_tx_t *tx)
{
	static const char *old_names[] = {
		"scrub_bookmark",
		"scrub_ddt_bookmark",
		"scrub_ddt_class_max",
		"scrub_queue",
		"scrub_min_txg",
		"scrub_max_txg",
		"scrub_func",
		"scrub_errors",
		NULL
	};

	dsl_pool_t *dp = scn->scn_dp;
	spa_t *spa = dp->dp_spa;
	int i;

	/* Remove any remnants of an old-style scrub. */
	for (i = 0; old_names[i]; i++) {
		(void) FUNC21(dp->dp_meta_objset,
		    DMU_POOL_DIRECTORY_OBJECT, old_names[i], tx);
	}

	if (scn->scn_phys.scn_queue_obj != 0) {
		FUNC2(FUNC3(dp->dp_meta_objset,
		    scn->scn_phys.scn_queue_obj, tx));
		scn->scn_phys.scn_queue_obj = 0;
	}
	FUNC9(scn);
	FUNC8(scn);

	scn->scn_phys.scn_flags &= ~DSF_SCRUB_PAUSED;

	/*
	 * If we were "restarted" from a stopped state, don't bother
	 * with anything else.
	 */
	if (!FUNC5(scn)) {
		FUNC0(!scn->scn_is_sorted);
		return;
	}

	if (scn->scn_is_sorted) {
		FUNC10(scn);
		scn->scn_is_sorted = B_FALSE;

		if (scn->scn_taskq != NULL) {
			FUNC19(scn->scn_taskq);
			scn->scn_taskq = NULL;
		}
	}

	scn->scn_phys.scn_state = complete ? DSS_FINISHED : DSS_CANCELED;

	FUNC18(spa);

	if (FUNC6(scn, tx))
		FUNC17(spa, "scan aborted, restarting", tx,
		    "errors=%llu", (u_longlong_t)FUNC16(spa));
	else if (!complete)
		FUNC17(spa, "scan cancelled", tx,
		    "errors=%llu", (u_longlong_t)FUNC16(spa));
	else
		FUNC17(spa, "scan done", tx,
		    "errors=%llu", (u_longlong_t)FUNC16(spa));

	if (FUNC1(scn)) {
		spa->spa_scrub_started = B_FALSE;
		spa->spa_scrub_active = B_FALSE;

		/*
		 * If the scrub/resilver completed, update all DTLs to
		 * reflect this.  Whether it succeeded or not, vacate
		 * all temporary scrub DTLs.
		 *
		 * As the scrub does not currently support traversing
		 * data that have been freed but are part of a checkpoint,
		 * we don't mark the scrub as done in the DTLs as faults
		 * may still exist in those vdevs.
		 */
		if (complete &&
		    !FUNC14(spa, SPA_FEATURE_POOL_CHECKPOINT)) {
			FUNC20(spa->spa_root_vdev, tx->tx_txg,
			    scn->scn_phys.scn_max_txg, B_TRUE);

			FUNC13(spa, NULL, NULL,
			    scn->scn_phys.scn_min_txg ?
			    ESC_ZFS_RESILVER_FINISH : ESC_ZFS_SCRUB_FINISH);
		} else {
			FUNC20(spa->spa_root_vdev, tx->tx_txg,
			    0, B_TRUE);
		}
		FUNC12(spa);

		/*
		 * We may have finished replacing a device.
		 * Let the async thread assess this and handle the detach.
		 */
		FUNC11(spa, SPA_ASYNC_RESILVER_DONE);

		/*
		 * Clear any deferred_resilver flags in the config.
		 * If there are drives that need resilvering, kick
		 * off an asynchronous request to start resilver.
		 * dsl_scan_clear_deferred() may update the config
		 * before the resilver can restart. In the event of
		 * a crash during this period, the spa loading code
		 * will find the drives that need to be resilvered
		 * when the machine reboots and start the resilver then.
		 */
		if (FUNC15(spa, SPA_FEATURE_RESILVER_DEFER)) {
			boolean_t resilver_needed =
			    FUNC4(spa->spa_root_vdev, tx);
			if (resilver_needed) {
				FUNC17(spa,
				    "starting deferred resilver", tx,
				    "errors=%llu",
				    (u_longlong_t)FUNC16(spa));
				FUNC11(spa, SPA_ASYNC_RESILVER);
			}
		}
	}

	scn->scn_phys.scn_end_time = FUNC7();

	if (spa->spa_errata == ZPOOL_ERRATA_ZOL_2094_SCRUB)
		spa->spa_errata = 0;

	FUNC0(!FUNC5(scn));
}