#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_6__ {scalar_t__ tx_txg; int /*<<< orphan*/  tx_txgh; int /*<<< orphan*/  tx_dirty_delayed; int /*<<< orphan*/  tx_pool; } ;
typedef  TYPE_1__ dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int TXG_NOTHROTTLE ; 
 int TXG_WAIT ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(dmu_tx_t *tx, uint64_t txg_how)
{
	int err;

	FUNC0(tx->tx_txg == 0);
	FUNC1(txg_how & ~(TXG_WAIT | TXG_NOTHROTTLE));
	FUNC0(!FUNC7(tx->tx_pool));

	/* If we might wait, we must not hold the config lock. */
	FUNC2((txg_how & TXG_WAIT), !FUNC6(tx->tx_pool));

	if ((txg_how & TXG_NOTHROTTLE))
		tx->tx_dirty_delayed = B_TRUE;

	while ((err = FUNC3(tx, txg_how)) != 0) {
		FUNC4(tx);

		if (err != ERESTART || !(txg_how & TXG_WAIT))
			return (err);

		FUNC5(tx);
	}

	FUNC8(&tx->tx_txgh);

	return (0);
}