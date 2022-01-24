#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/ * dp_origin_snap; int /*<<< orphan*/  dp_root_dir; int /*<<< orphan*/  dp_config_rwlock; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_9__ {int /*<<< orphan*/  ds_prev_snap_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FTAG ; 
 int /*<<< orphan*/  ORIGIN_DIR_NAME ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kcred ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC9(dsl_pool_t *dp, dmu_tx_t *tx)
{
	uint64_t dsobj;
	dsl_dataset_t *ds;

	FUNC0(FUNC2(tx));
	FUNC0(dp->dp_origin_snap == NULL);
	FUNC0(FUNC8(&dp->dp_config_rwlock, RW_WRITER));

	/* create the origin dir, ds, & snap-ds */
	dsobj = FUNC3(dp->dp_root_dir, ORIGIN_DIR_NAME,
	    NULL, 0, kcred, NULL, tx);
	FUNC1(FUNC4(dp, dsobj, FTAG, &ds));
	FUNC7(ds, ORIGIN_DIR_NAME, tx);
	FUNC1(FUNC4(dp, FUNC5(ds)->ds_prev_snap_obj,
	    dp, &dp->dp_origin_snap));
	FUNC6(ds, FTAG);
}