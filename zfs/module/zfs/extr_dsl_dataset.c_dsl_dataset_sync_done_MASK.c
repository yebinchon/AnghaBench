#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * os_next_write_raw; scalar_t__ os_encrypted; int /*<<< orphan*/ * os_synced_dnodes; } ;
typedef  TYPE_1__ objset_t ;
struct TYPE_18__ {int /*<<< orphan*/  ds_dbuf; TYPE_7__* ds_dir; int /*<<< orphan*/  ds_deadlist; int /*<<< orphan*/  ds_pending_deadlist; TYPE_1__* ds_objset; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_19__ {size_t tx_txg; } ;
typedef  TYPE_3__ dmu_tx_t ;
struct TYPE_20__ {int /*<<< orphan*/  dd_livelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  dsl_deadlist_insert_alloc_cb ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(dsl_dataset_t *ds, dmu_tx_t *tx)
{
	objset_t *os = ds->ds_objset;

	FUNC2(&ds->ds_pending_deadlist,
	    dsl_deadlist_insert_alloc_cb, &ds->ds_deadlist, tx);

	if (FUNC7(&ds->ds_dir->dd_livelist)) {
		FUNC9(ds, tx);
		if (FUNC10(ds)) {
			FUNC8(ds->ds_dir, tx, B_TRUE);
		}
	}

	FUNC6(ds, tx);

	if (os->os_synced_dnodes != NULL) {
		FUNC11(os->os_synced_dnodes);
		os->os_synced_dnodes = NULL;
	}

	if (os->os_encrypted)
		os->os_next_write_raw[tx->tx_txg & TXG_MASK] = B_FALSE;
	else
		FUNC1(os->os_next_write_raw[tx->tx_txg & TXG_MASK]);

	FUNC0(!FUNC4(os, FUNC5(tx)));

	FUNC3(ds->ds_dbuf, ds);
}