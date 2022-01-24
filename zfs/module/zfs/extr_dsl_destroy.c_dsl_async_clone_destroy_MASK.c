#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/  spa_livelist_delete_zthr; int /*<<< orphan*/  spa_livelists_to_delete; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_14__ {TYPE_3__* dp_free_dir; TYPE_1__* dp_spa; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_15__ {int /*<<< orphan*/  dd_livelist; int /*<<< orphan*/  dd_object; } ;
typedef  TYPE_3__ dsl_dir_t ;
struct TYPE_16__ {TYPE_3__* ds_dir; } ;
typedef  TYPE_4__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_17__ {int /*<<< orphan*/  dd_uncompressed_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DD_FIELD_LIVELIST ; 
 int /*<<< orphan*/  DD_USED_HEAD ; 
 int /*<<< orphan*/  DMU_OTN_ZAP_METADATA ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_POOL_DELETED_CLONES ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(dsl_dataset_t *ds, dmu_tx_t *tx)
{
	uint64_t zap_obj, to_delete, used, comp, uncomp;
	objset_t *os;
	dsl_dir_t *dd = ds->ds_dir;
	dsl_pool_t *dp = FUNC3(tx);
	objset_t *mos = dp->dp_meta_objset;
	spa_t *spa = FUNC3(tx)->dp_spa;
	FUNC0(FUNC1(ds, &os));

	/* Check that the clone is in a correct state to be deleted */
	FUNC4(dd);

	/* Destroy the zil */
	FUNC14(FUNC2(os), tx);

	FUNC0(FUNC12(mos, dd->dd_object,
	    DD_FIELD_LIVELIST, sizeof (uint64_t), 1, &to_delete));
	/* Initialize deleted_clones entry to track livelists to cleanup */
	int error = FUNC12(mos, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_DELETED_CLONES, sizeof (uint64_t), 1, &zap_obj);
	if (error == ENOENT) {
		zap_obj = FUNC11(mos, DMU_OTN_ZAP_METADATA,
		    DMU_OT_NONE, 0, tx);
		FUNC0(FUNC9(mos, DMU_POOL_DIRECTORY_OBJECT,
		    DMU_POOL_DELETED_CLONES, sizeof (uint64_t), 1,
		    &(zap_obj), tx));
		spa->spa_livelists_to_delete = zap_obj;
	} else if (error != 0) {
		FUNC13("zfs: error %d was returned while looking "
		    "up DMU_POOL_DELETED_CLONES in the zap");
		return;
	}
	FUNC0(FUNC10(mos, zap_obj, to_delete, tx));

	/* Clone is no longer using space, now tracked by dp_free_dir */
	FUNC5(&dd->dd_livelist, &used, &comp, &uncomp);
	FUNC6(dd, DD_USED_HEAD,
	    -used, -comp, -FUNC7(dd)->dd_uncompressed_bytes,
	    tx);
	FUNC6(dp->dp_free_dir, DD_USED_HEAD,
	    used, comp, uncomp, tx);
	FUNC8(dd, tx, B_FALSE);
	FUNC15(spa->spa_livelist_delete_zthr);
}