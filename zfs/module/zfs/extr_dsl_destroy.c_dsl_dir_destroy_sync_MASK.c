#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_11__ {int /*<<< orphan*/  dp_spa; int /*<<< orphan*/  dp_config_rwlock; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_12__ {scalar_t__ dd_crypto_obj; int /*<<< orphan*/  dd_myname; struct TYPE_12__* dd_parent; int /*<<< orphan*/  dd_object; } ;
typedef  TYPE_2__ dsl_dir_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  size_t dd_used_t ;
struct TYPE_13__ {scalar_t__ dd_child_dir_zapobj; scalar_t__ dd_props_zapobj; scalar_t__ dd_clones; int /*<<< orphan*/  dd_deleg_zapobj; int /*<<< orphan*/ * dd_used_breakdown; int /*<<< orphan*/  dd_reserved; int /*<<< orphan*/  dd_used_bytes; int /*<<< orphan*/  dd_head_dataset_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DD_FIELD_FILESYSTEM_COUNT ; 
 size_t DD_USED_NUM ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_6__* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(uint64_t ddobj, dmu_tx_t *tx)
{
	dsl_dir_t *dd;
	dsl_pool_t *dp = FUNC5(tx);
	objset_t *mos = dp->dp_meta_objset;
	dd_used_t t;

	FUNC0(FUNC2(&FUNC5(tx)->dp_config_rwlock));

	FUNC3(FUNC8(dp, ddobj, NULL, FTAG, &dd));

	FUNC1(FUNC9(dd)->dd_head_dataset_obj);

	/* Decrement the filesystem count for all parent filesystems. */
	if (dd->dd_parent != NULL)
		FUNC12(dd->dd_parent, -1,
		    DD_FIELD_FILESYSTEM_COUNT, tx);

	/*
	 * Remove our reservation. The impl() routine avoids setting the
	 * actual property, which would require the (already destroyed) ds.
	 */
	FUNC11(dd, 0, tx);

	FUNC1(FUNC9(dd)->dd_used_bytes);
	FUNC1(FUNC9(dd)->dd_reserved);
	for (t = 0; t < DD_USED_NUM; t++)
		FUNC1(FUNC9(dd)->dd_used_breakdown[t]);

	if (dd->dd_crypto_obj != 0) {
		FUNC6(dd->dd_crypto_obj, tx);
		(void) FUNC13(dp->dp_spa, dd->dd_object);
	}

	FUNC3(FUNC14(mos, FUNC9(dd)->dd_child_dir_zapobj, tx));
	FUNC3(FUNC14(mos, FUNC9(dd)->dd_props_zapobj, tx));
	if (FUNC9(dd)->dd_clones != 0)
		FUNC3(FUNC14(mos, FUNC9(dd)->dd_clones, tx));
	FUNC3(FUNC7(mos, FUNC9(dd)->dd_deleg_zapobj, tx));
	FUNC3(FUNC15(mos,
	    FUNC9(dd->dd_parent)->dd_child_dir_zapobj,
	    dd->dd_myname, tx));

	FUNC10(dd, FTAG);
	FUNC4(mos, ddobj, tx);
}