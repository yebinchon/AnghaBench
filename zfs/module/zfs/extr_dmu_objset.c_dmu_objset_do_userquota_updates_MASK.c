#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_18__ ;
typedef  struct TYPE_21__   TYPE_16__ ;
typedef  struct TYPE_20__   TYPE_11__ ;

/* Type definitions */
struct TYPE_24__ {int uua_sublist_idx; TYPE_4__* uua_tx; TYPE_3__* uua_os; } ;
typedef  TYPE_2__ userquota_updates_arg_t ;
struct TYPE_25__ {int /*<<< orphan*/  os_synced_dnodes; TYPE_1__* os_spa; scalar_t__ os_encrypted; } ;
typedef  TYPE_3__ objset_t ;
struct TYPE_26__ {scalar_t__ tx_txg; } ;
typedef  TYPE_4__ dmu_tx_t ;
struct TYPE_23__ {scalar_t__ spa_claim_max_txg; } ;
struct TYPE_22__ {scalar_t__ dn_type; } ;
struct TYPE_21__ {scalar_t__ dn_type; } ;
struct TYPE_20__ {int /*<<< orphan*/  dp_sync_taskq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_GROUPUSED_OBJECT ; 
 scalar_t__ DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_OT_USERGROUP_USED ; 
 TYPE_18__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  DMU_PROJECTUSED_OBJECT ; 
 TYPE_16__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  DMU_USERUSED_OBJECT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 TYPE_11__* FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 TYPE_2__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  userquota_updates_task ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_4__*) ; 

void
FUNC12(objset_t *os, dmu_tx_t *tx)
{
	int num_sublists;

	if (!FUNC6(os))
		return;

	/*
	 * If this is a raw receive just return and handle accounting
	 * later when we have the keys loaded. We also don't do user
	 * accounting during claiming since the datasets are not owned
	 * for the duration of claiming and this txg should only be
	 * used for recovery.
	 */
	if (os->os_encrypted && FUNC3(os))
		return;

	if (tx->tx_txg <= os->os_spa->spa_claim_max_txg)
		return;

	/* Allocate the user/group/project used objects if necessary. */
	if (FUNC1(os)->dn_type == DMU_OT_NONE) {
		FUNC2(FUNC11(os,
		    DMU_USERUSED_OBJECT,
		    DMU_OT_USERGROUP_USED, DMU_OT_NONE, 0, tx));
		FUNC2(FUNC11(os,
		    DMU_GROUPUSED_OBJECT,
		    DMU_OT_USERGROUP_USED, DMU_OT_NONE, 0, tx));
	}

	if (FUNC5(os) &&
	    FUNC0(os)->dn_type == DMU_OT_NONE) {
		FUNC2(FUNC11(os, DMU_PROJECTUSED_OBJECT,
		    DMU_OT_USERGROUP_USED, DMU_OT_NONE, 0, tx));
	}

	num_sublists = FUNC8(os->os_synced_dnodes);
	for (int i = 0; i < num_sublists; i++) {
		if (FUNC9(os->os_synced_dnodes, i))
			continue;
		userquota_updates_arg_t *uua =
		    FUNC7(sizeof (*uua), KM_SLEEP);
		uua->uua_os = os;
		uua->uua_sublist_idx = i;
		uua->uua_tx = tx;
		/* note: caller does taskq_wait() */
		(void) FUNC10(FUNC4(os)->dp_sync_taskq,
		    userquota_updates_task, uua, 0);
		/* callback frees uua */
	}
}