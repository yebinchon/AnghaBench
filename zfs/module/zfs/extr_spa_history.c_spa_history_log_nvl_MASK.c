#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_3__ {int /*<<< orphan*/  dp_mos_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_ZPOOL_HISTORY ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NONE ; 
 int /*<<< orphan*/  ZPOOL_HIDDEN_ARGS ; 
 int /*<<< orphan*/  ZPOOL_HIST_INPUT_NVL ; 
 int /*<<< orphan*/  ZPOOL_HIST_WHO ; 
 int /*<<< orphan*/  ZPOOL_HIST_ZONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_history_log_sync ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int
FUNC18(spa_t *spa, nvlist_t *nvl)
{
	int err = 0;
	dmu_tx_t *tx;
	nvlist_t *nvarg, *in_nvl = NULL;

	if (FUNC16(spa) < SPA_VERSION_ZPOOL_HISTORY || !FUNC17(spa))
		return (FUNC1(EINVAL));

	err = FUNC12(nvl, ZPOOL_HIST_INPUT_NVL, &in_nvl);
	if (err == 0) {
		(void) FUNC13(in_nvl, ZPOOL_HIDDEN_ARGS);
	}

	tx = FUNC7(FUNC14(spa)->dp_mos_dir);
	err = FUNC5(tx, TXG_WAIT);
	if (err) {
		FUNC4(tx);
		return (err);
	}

	FUNC2(FUNC11(nvl, &nvarg, KM_SLEEP));
	if (FUNC15() != NULL) {
		FUNC9(nvarg, ZPOOL_HIST_ZONE,
		    FUNC15());
	}
	FUNC10(nvarg, ZPOOL_HIST_WHO, FUNC3(FUNC0()));

	/* Kick this off asynchronously; errors are ignored. */
	FUNC8(FUNC14(spa), spa_history_log_sync,
	    nvarg, 0, ZFS_SPACE_CHECK_NONE, tx);
	FUNC6(tx);

	/* spa_history_log_sync will free nvl */
	return (err);
}