#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_7__ {int /*<<< orphan*/  tx_txg; } ;
typedef  TYPE_1__ dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NONE ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_NAME ; 
 int /*<<< orphan*/  ZPOOL_HIST_INT_STR ; 
 int /*<<< orphan*/  ZPOOL_HIST_TXG ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,TYPE_1__*),int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(nvlist_t *nvl, const char *operation, spa_t *spa,
    dmu_tx_t *tx, const char *fmt, va_list adx)
{
	char *msg;

	/*
	 * If this is part of creating a pool, not everything is
	 * initialized yet, so don't bother logging the internal events.
	 * Likewise if the pool is not writeable.
	 */
	if (FUNC9(spa) || !FUNC10(spa)) {
		FUNC4(nvl);
		return;
	}

	msg = FUNC6(fmt, adx);
	FUNC2(nvl, ZPOOL_HIST_INT_STR, msg);
	FUNC5(msg);

	FUNC2(nvl, ZPOOL_HIST_INT_NAME, operation);
	FUNC3(nvl, ZPOOL_HIST_TXG, tx->tx_txg);

	if (FUNC0(tx)) {
		FUNC8(nvl, tx);
	} else {
		FUNC1(FUNC7(spa),
		    spa_history_log_sync, nvl, 0, ZFS_SPACE_CHECK_NONE, tx);
	}
	/* spa_history_log_sync() will free nvl */
}