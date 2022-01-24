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
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  ds_prev; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_7__ {int /*<<< orphan*/  ddsta_cleanup_minor; int /*<<< orphan*/  ddsta_htag; int /*<<< orphan*/  ddsta_snapname; int /*<<< orphan*/  ddsta_fsname; } ;
typedef  TYPE_2__ dsl_dataset_snapshot_tmp_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_snapshot_tmp_arg_t *ddsta = arg;
	dsl_pool_t *dp = FUNC1(tx);
	dsl_dataset_t *ds = NULL;

	FUNC0(FUNC2(dp, ddsta->ddsta_fsname, FTAG, &ds));

	FUNC4(ds, ddsta->ddsta_snapname, tx);
	FUNC5(ds->ds_prev, ddsta->ddsta_htag,
	    ddsta->ddsta_cleanup_minor, FUNC7(), tx);
	FUNC6(ds->ds_prev, B_TRUE, tx);

	FUNC3(ds, FTAG);
}