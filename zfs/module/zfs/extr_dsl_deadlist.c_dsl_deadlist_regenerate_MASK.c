#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_6__ {scalar_t__ dl_oldfmt; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ dsl_deadlist_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_7__ {int /*<<< orphan*/  ds_prev_snap_obj; int /*<<< orphan*/  ds_prev_snap_txg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(objset_t *os, uint64_t dlobj,
    uint64_t mrs_obj, dmu_tx_t *tx)
{
	dsl_deadlist_t dl = { 0 };
	dsl_pool_t *dp = FUNC1(os);

	FUNC7(&dl, os, dlobj);
	if (dl.dl_oldfmt) {
		FUNC6(&dl);
		return;
	}

	while (mrs_obj != 0) {
		dsl_dataset_t *ds;
		FUNC0(FUNC2(dp, mrs_obj, FTAG, &ds));
		FUNC5(&dl,
		    FUNC3(ds)->ds_prev_snap_txg, tx);
		mrs_obj = FUNC3(ds)->ds_prev_snap_obj;
		FUNC4(ds, FTAG);
	}
	FUNC6(&dl);
}