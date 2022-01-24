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
typedef  int /*<<< orphan*/  dnode_t ;
struct TYPE_8__ {int /*<<< orphan*/  tx_holds; int /*<<< orphan*/  tx_callbacks; int /*<<< orphan*/  txh_memory_tohold; int /*<<< orphan*/  txh_space_towrite; int /*<<< orphan*/ * txh_dnode; } ;
typedef  TYPE_1__ dmu_tx_t ;
typedef  TYPE_1__ dmu_tx_hold_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(dmu_tx_t *tx)
{
	dmu_tx_hold_t *txh;

	while ((txh = FUNC3(&tx->tx_holds)) != NULL) {
		dnode_t *dn = txh->txh_dnode;

		FUNC4(&tx->tx_holds, txh);
		FUNC6(&txh->txh_space_towrite,
		    FUNC5(&txh->txh_space_towrite));
		FUNC6(&txh->txh_memory_tohold,
		    FUNC5(&txh->txh_memory_tohold));
		FUNC1(txh, sizeof (dmu_tx_hold_t));
		if (dn != NULL)
			FUNC0(dn, tx);
	}

	FUNC2(&tx->tx_callbacks);
	FUNC2(&tx->tx_holds);
	FUNC1(tx, sizeof (dmu_tx_t));
}