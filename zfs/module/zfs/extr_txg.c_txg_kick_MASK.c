#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ tx_quiesce_txg_waiting; scalar_t__ tx_open_txg; scalar_t__ tx_sync_txg_waiting; scalar_t__ tx_synced_txg; scalar_t__ tx_quiesced_txg; int /*<<< orphan*/  tx_sync_lock; int /*<<< orphan*/  tx_quiesce_more_cv; } ;
typedef  TYPE_1__ tx_state_t ;
struct TYPE_8__ {TYPE_1__ dp_tx; } ;
typedef  TYPE_2__ dsl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7(dsl_pool_t *dp)
{
	tx_state_t *tx = &dp->dp_tx;

	FUNC0(!FUNC2(dp));

	FUNC3(&tx->tx_sync_lock);
	if (!FUNC6(dp) &&
	    !FUNC5(dp) &&
	    tx->tx_quiesce_txg_waiting <= tx->tx_open_txg &&
	    tx->tx_sync_txg_waiting <= tx->tx_synced_txg &&
	    tx->tx_quiesced_txg <= tx->tx_synced_txg) {
		tx->tx_quiesce_txg_waiting = tx->tx_open_txg + 1;
		FUNC1(&tx->tx_quiesce_more_cv);
	}
	FUNC4(&tx->tx_sync_lock);
}