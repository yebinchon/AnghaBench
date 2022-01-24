#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_11__ {scalar_t__ scn_async_destroying; } ;
typedef  TYPE_1__ dsl_scan_t ;
struct TYPE_12__ {int /*<<< orphan*/  dp_free_dir; int /*<<< orphan*/  dp_bptree_obj; int /*<<< orphan*/  dp_spa; TYPE_1__* dp_scan; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  ds_dir; int /*<<< orphan*/  ds_bp_rwlock; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_15__ {int /*<<< orphan*/  ds_prev_snap_txg; int /*<<< orphan*/  ds_bp; int /*<<< orphan*/  ds_unique_bytes; } ;
struct TYPE_14__ {int /*<<< orphan*/  dd_uncompressed_bytes; int /*<<< orphan*/  dd_compressed_bytes; int /*<<< orphan*/  dd_used_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DD_USED_HEAD ; 
 int /*<<< orphan*/  DMU_POOL_BPTREE_OBJ ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SPA_FEATURE_ASYNC_DESTROY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(dsl_dataset_t *ds, dmu_tx_t *tx)
{
	uint64_t used, comp, uncomp;
	objset_t *os;

	FUNC2(FUNC5(ds, &os));
	dsl_pool_t *dp = FUNC7(tx);
	objset_t *mos = dp->dp_meta_objset;

	FUNC16(FUNC6(os), tx);

	if (!FUNC14(dp->dp_spa,
	    SPA_FEATURE_ASYNC_DESTROY)) {
		dsl_scan_t *scn = dp->dp_scan;
		FUNC13(dp->dp_spa, SPA_FEATURE_ASYNC_DESTROY,
		    tx);
		dp->dp_bptree_obj = FUNC4(mos, tx);
		FUNC2(FUNC15(mos,
		    DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_BPTREE_OBJ, sizeof (uint64_t), 1,
		    &dp->dp_bptree_obj, tx));
		FUNC0(!scn->scn_async_destroying);
		scn->scn_async_destroying = B_TRUE;
	}

	used = FUNC10(ds->ds_dir)->dd_used_bytes;
	comp = FUNC10(ds->ds_dir)->dd_compressed_bytes;
	uncomp = FUNC10(ds->ds_dir)->dd_uncompressed_bytes;

	FUNC0(!FUNC1(ds) ||
	    FUNC8(ds)->ds_unique_bytes == used);

	FUNC11(&ds->ds_bp_rwlock, RW_READER, FTAG);
	FUNC3(mos, dp->dp_bptree_obj,
	    &FUNC8(ds)->ds_bp,
	    FUNC8(ds)->ds_prev_snap_txg,
	    used, comp, uncomp, tx);
	FUNC12(&ds->ds_bp_rwlock, FTAG);
	FUNC9(ds->ds_dir, DD_USED_HEAD,
	    -used, -comp, -uncomp, tx);
	FUNC9(dp->dp_free_dir, DD_USED_HEAD,
	    used, comp, uncomp, tx);
}