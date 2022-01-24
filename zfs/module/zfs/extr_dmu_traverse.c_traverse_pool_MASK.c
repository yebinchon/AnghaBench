#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_9__ {int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_10__ {scalar_t__ doi_bonus_type; } ;
typedef  TYPE_2__ dmu_object_info_t ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  blkptr_cb_t ;
struct TYPE_11__ {scalar_t__ ds_prev_snap_txg; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ DMU_OT_DSL_DATASET ; 
 int ESRCH ; 
 int /*<<< orphan*/  FTAG ; 
 int TRAVERSE_HARD ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,void*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*) ; 

int
FUNC11(spa_t *spa, uint64_t txg_start, int flags,
    blkptr_cb_t func, void *arg)
{
	int err;
	dsl_pool_t *dp = FUNC7(spa);
	objset_t *mos = dp->dp_meta_objset;
	boolean_t hard = (flags & TRAVERSE_HARD);

	/* visit the MOS */
	err = FUNC10(spa, NULL, 0, FUNC8(spa),
	    txg_start, NULL, flags, func, arg);
	if (err != 0)
		return (err);

	/* visit each dataset */
	for (uint64_t obj = 1; err == 0;
	    err = FUNC1(mos, &obj, B_FALSE, txg_start)) {
		dmu_object_info_t doi;

		err = FUNC0(mos, obj, &doi);
		if (err != 0) {
			if (hard)
				continue;
			break;
		}

		if (doi.doi_bonus_type == DMU_OT_DSL_DATASET) {
			dsl_dataset_t *ds;
			uint64_t txg = txg_start;

			FUNC5(dp, FTAG);
			err = FUNC2(dp, obj, FTAG, &ds);
			FUNC6(dp, FTAG);
			if (err != 0) {
				if (hard)
					continue;
				break;
			}
			if (FUNC3(ds)->ds_prev_snap_txg > txg)
				txg = FUNC3(ds)->ds_prev_snap_txg;
			err = FUNC9(ds, txg, flags, func, arg);
			FUNC4(ds, FTAG);
			if (err != 0)
				break;
		}
	}
	if (err == ESRCH)
		err = 0;
	return (err);
}