#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int tx_threads; int /*<<< orphan*/  tx_sync_lock; void* tx_sync_thread; void* tx_quiesce_thread; } ;
typedef  TYPE_1__ tx_state_t ;
struct TYPE_7__ {TYPE_1__ dp_tx; } ;
typedef  TYPE_2__ dsl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TS_RUN ; 
 int /*<<< orphan*/  defclsyspri ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p0 ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txg_quiesce_thread ; 
 int /*<<< orphan*/  txg_sync_thread ; 

void
FUNC5(dsl_pool_t *dp)
{
	tx_state_t *tx = &dp->dp_tx;

	FUNC2(&tx->tx_sync_lock);

	FUNC1("pool %p\n", dp);

	FUNC0(tx->tx_threads);

	tx->tx_threads = 2;

	tx->tx_quiesce_thread = FUNC4(NULL, 0, txg_quiesce_thread,
	    dp, 0, &p0, TS_RUN, defclsyspri);

	/*
	 * The sync thread can need a larger-than-default stack size on
	 * 32-bit x86.  This is due in part to nested pools and
	 * scrub_visitbp() recursion.
	 */
	tx->tx_sync_thread = FUNC4(NULL, 0, txg_sync_thread,
	    dp, 0, &p0, TS_RUN, defclsyspri);

	FUNC3(&tx->tx_sync_lock);
}