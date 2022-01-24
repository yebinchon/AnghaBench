#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  ds_prev; int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_11__ {int /*<<< orphan*/  ddra_result; int /*<<< orphan*/  ddra_fsname; } ;
typedef  TYPE_2__ dsl_dataset_rollback_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS_CREATE_FLAG_NODIRTY ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  kcred ; 

void
FUNC11(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_rollback_arg_t *ddra = arg;
	dsl_pool_t *dp = FUNC1(tx);
	dsl_dataset_t *ds, *clone;
	uint64_t cloneobj;
	char namebuf[ZFS_MAX_DATASET_NAME_LEN];

	FUNC0(FUNC4(dp, ddra->ddra_fsname, FTAG, &ds));

	FUNC6(ds->ds_prev, namebuf);
	FUNC10(ddra->ddra_result, "target", namebuf);

	cloneobj = FUNC3(ds->ds_dir, "%rollback",
	    ds->ds_prev, DS_CREATE_FLAG_NODIRTY, kcred, NULL, tx);

	FUNC0(FUNC5(dp, cloneobj, FTAG, &clone));

	FUNC2(clone, ds, tx);
	FUNC8(ds, tx);

	FUNC9(clone, tx);

	FUNC7(clone, FTAG);
	FUNC7(ds, FTAG);
}