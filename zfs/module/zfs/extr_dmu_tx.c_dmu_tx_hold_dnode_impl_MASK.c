#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  enum dmu_tx_hold_type { ____Placeholder_dmu_tx_hold_type } dmu_tx_hold_type ;
struct TYPE_10__ {scalar_t__ dn_assigned_txg; int /*<<< orphan*/  dn_mtx; int /*<<< orphan*/  dn_tx_holds; int /*<<< orphan*/  dn_holds; } ;
typedef  TYPE_1__ dnode_t ;
struct TYPE_11__ {scalar_t__ tx_txg; int /*<<< orphan*/  tx_holds; } ;
typedef  TYPE_2__ dmu_tx_t ;
struct TYPE_12__ {int txh_type; void* txh_arg2; void* txh_arg1; int /*<<< orphan*/  txh_memory_tohold; int /*<<< orphan*/  txh_space_towrite; TYPE_1__* txh_dnode; TYPE_2__* txh_tx; } ;
typedef  TYPE_3__ dmu_tx_hold_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_3__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static dmu_tx_hold_t *
FUNC7(dmu_tx_t *tx, dnode_t *dn, enum dmu_tx_hold_type type,
    uint64_t arg1, uint64_t arg2)
{
	dmu_tx_hold_t *txh;

	if (dn != NULL) {
		(void) FUNC5(&dn->dn_holds, tx);
		if (tx->tx_txg != 0) {
			FUNC3(&dn->dn_mtx);
			/*
			 * dn->dn_assigned_txg == tx->tx_txg doesn't pose a
			 * problem, but there's no way for it to happen (for
			 * now, at least).
			 */
			FUNC0(dn->dn_assigned_txg == 0);
			dn->dn_assigned_txg = tx->tx_txg;
			(void) FUNC5(&dn->dn_tx_holds, tx);
			FUNC4(&dn->dn_mtx);
		}
	}

	txh = FUNC1(sizeof (dmu_tx_hold_t), KM_SLEEP);
	txh->txh_tx = tx;
	txh->txh_dnode = dn;
	FUNC6(&txh->txh_space_towrite);
	FUNC6(&txh->txh_memory_tohold);
	txh->txh_type = type;
	txh->txh_arg1 = arg1;
	txh->txh_arg2 = arg2;
	FUNC2(&tx->tx_holds, txh);

	return (txh);
}