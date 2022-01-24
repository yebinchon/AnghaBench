#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_15__ {int /*<<< orphan*/  dp_spa; int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_16__ {int /*<<< orphan*/  ds_object; int /*<<< orphan*/  ds_snapname; int /*<<< orphan*/  ds_lock; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_17__ {int /*<<< orphan*/  ddrsa_newsnapname; int /*<<< orphan*/  ddrsa_oldsnapname; int /*<<< orphan*/ * ddrsa_tx; } ;
typedef  TYPE_3__ dsl_dataset_rename_snapshot_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_14__ {int /*<<< orphan*/  ds_snapnames_zapobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_10__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(dsl_pool_t *dp,
    dsl_dataset_t *hds, void *arg)
{
	dsl_dataset_rename_snapshot_arg_t *ddrsa = arg;
	dsl_dataset_t *ds;
	uint64_t val;
	dmu_tx_t *tx = ddrsa->ddrsa_tx;
	int error;

	error = FUNC5(hds, ddrsa->ddrsa_oldsnapname, &val);
	FUNC0(error == 0 || error == ENOENT);
	if (error == ENOENT) {
		/* ignore nonexistent snapshots */
		return (0);
	}

	FUNC1(FUNC2(dp, val, FTAG, &ds));

	/* log before we change the name */
	FUNC9(ds, "rename", tx,
	    "-> @%s", ddrsa->ddrsa_newsnapname);

	FUNC1(FUNC6(hds, ddrsa->ddrsa_oldsnapname, tx,
	    B_FALSE));
	FUNC7(&ds->ds_lock);
	(void) FUNC10(ds->ds_snapname, ddrsa->ddrsa_newsnapname,
	    sizeof (ds->ds_snapname));
	FUNC8(&ds->ds_lock);
	FUNC1(FUNC11(dp->dp_meta_objset,
	    FUNC3(hds)->ds_snapnames_zapobj,
	    ds->ds_snapname, 8, 1, &ds->ds_object, tx));
	FUNC12(dp->dp_spa, ddrsa->ddrsa_oldsnapname,
	    ddrsa->ddrsa_newsnapname, B_TRUE);

	FUNC4(ds, FTAG);
	return (0);
}