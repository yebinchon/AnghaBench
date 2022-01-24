#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_9__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  ds_prev; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_11__ {int /*<<< orphan*/ * ddsa_props; int /*<<< orphan*/  ddsa_snaps; } ;
typedef  TYPE_3__ dsl_dataset_snapshot_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC11(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_snapshot_arg_t *ddsa = arg;
	dsl_pool_t *dp = FUNC1(tx);
	nvpair_t *pair;

	for (pair = FUNC6(ddsa->ddsa_snaps, NULL);
	    pair != NULL; pair = FUNC6(ddsa->ddsa_snaps, pair)) {
		dsl_dataset_t *ds;
		char *name, *atp;
		char dsname[ZFS_MAX_DATASET_NAME_LEN];

		name = FUNC7(pair);
		atp = FUNC8(name, '@');
		(void) FUNC9(dsname, name, atp - name + 1);
		FUNC0(FUNC2(dp, dsname, FTAG, &ds));

		FUNC4(ds, atp + 1, tx);
		if (ddsa->ddsa_props != NULL) {
			FUNC5(ds->ds_prev,
			    ZPROP_SRC_LOCAL, ddsa->ddsa_props, tx);
		}
		FUNC10(dp->dp_spa, FUNC7(pair), B_TRUE);
		FUNC3(ds, FTAG);
	}
}