#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dnode_t ;
struct TYPE_4__ {int /*<<< orphan*/  tx_txg; } ;
typedef  TYPE_1__ dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_tx_hold_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THT_ZAP ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 

void
FUNC4(dmu_tx_t *tx, dnode_t *dn, int add, const char *name)
{
	dmu_tx_hold_t *txh;

	FUNC1(tx->tx_txg);
	FUNC0(dn != NULL);

	txh = FUNC2(tx, dn, THT_ZAP, add, (uintptr_t)name);
	if (txh != NULL)
		FUNC3(txh, name);
}