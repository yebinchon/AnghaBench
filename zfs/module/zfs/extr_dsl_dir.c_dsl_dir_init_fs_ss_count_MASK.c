#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_20__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_15__ ;

/* Type definitions */
struct TYPE_23__ {char* za_name; int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_1__ zap_cursor_t ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  my_ss_cnt ;
typedef  int /*<<< orphan*/  my_fs_cnt ;
struct TYPE_25__ {int /*<<< orphan*/  dp_spa; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_3__ dsl_pool_t ;
struct TYPE_26__ {char* dd_myname; int /*<<< orphan*/  dd_object; int /*<<< orphan*/  dd_dbuf; TYPE_3__* dd_pool; } ;
typedef  TYPE_4__ dsl_dir_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  count ;
struct TYPE_24__ {int /*<<< orphan*/  ds_snapnames_zapobj; } ;
struct TYPE_22__ {int /*<<< orphan*/  dd_head_dataset_obj; int /*<<< orphan*/  dd_child_dir_zapobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DD_FIELD_FILESYSTEM_COUNT ; 
 int /*<<< orphan*/  DD_FIELD_SNAPSHOT_COUNT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  SPA_FEATURE_FS_SS_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_20__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__**) ; 
 TYPE_15__* FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_1__* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 

__attribute__((used)) static void
FUNC22(dsl_dir_t *dd, dmu_tx_t *tx)
{
	uint64_t my_fs_cnt = 0;
	uint64_t my_ss_cnt = 0;
	dsl_pool_t *dp = dd->dd_pool;
	objset_t *os = dp->dp_meta_objset;
	zap_cursor_t *zc;
	zap_attribute_t *za;
	dsl_dataset_t *ds;

	FUNC0(FUNC14(dp->dp_spa, SPA_FEATURE_FS_SS_LIMIT));
	FUNC0(FUNC11(dp));
	FUNC0(FUNC3(tx));

	FUNC10(dd, tx);

	/*
	 * If the filesystem count has already been initialized then we
	 * don't need to recurse down any further.
	 */
	if (FUNC16(os, dd->dd_object, DD_FIELD_FILESYSTEM_COUNT) == 0)
		return;

	zc = FUNC12(sizeof (zap_cursor_t), KM_SLEEP);
	za = FUNC12(sizeof (zap_attribute_t), KM_SLEEP);

	/* Iterate my child dirs */
	for (FUNC19(zc, os, FUNC8(dd)->dd_child_dir_zapobj);
	    FUNC20(zc, za) == 0; FUNC17(zc)) {
		dsl_dir_t *chld_dd;
		uint64_t count;

		FUNC1(FUNC7(dp, za->za_first_integer, NULL, FTAG,
		    &chld_dd));

		/*
		 * Ignore hidden ($FREE, $MOS & $ORIGIN) objsets and
		 * temporary datasets.
		 */
		if (chld_dd->dd_myname[0] == '$' ||
		    chld_dd->dd_myname[0] == '%') {
			FUNC9(chld_dd, FTAG);
			continue;
		}

		my_fs_cnt++;	/* count this child */

		FUNC22(chld_dd, tx);

		FUNC1(FUNC21(os, chld_dd->dd_object,
		    DD_FIELD_FILESYSTEM_COUNT, sizeof (count), 1, &count));
		my_fs_cnt += count;
		FUNC1(FUNC21(os, chld_dd->dd_object,
		    DD_FIELD_SNAPSHOT_COUNT, sizeof (count), 1, &count));
		my_ss_cnt += count;

		FUNC9(chld_dd, FTAG);
	}
	FUNC18(zc);
	/* Count my snapshots (we counted children's snapshots above) */
	FUNC1(FUNC4(dd->dd_pool,
	    FUNC8(dd)->dd_head_dataset_obj, FTAG, &ds));

	for (FUNC19(zc, os, FUNC5(ds)->ds_snapnames_zapobj);
	    FUNC20(zc, za) == 0;
	    FUNC17(zc)) {
		/* Don't count temporary snapshots */
		if (za->za_name[0] != '%')
			my_ss_cnt++;
	}
	FUNC18(zc);

	FUNC6(ds, FTAG);

	FUNC13(zc, sizeof (zap_cursor_t));
	FUNC13(za, sizeof (zap_attribute_t));

	/* we're in a sync task, update counts */
	FUNC2(dd->dd_dbuf, tx);
	FUNC1(FUNC15(os, dd->dd_object, DD_FIELD_FILESYSTEM_COUNT,
	    sizeof (my_fs_cnt), 1, &my_fs_cnt, tx));
	FUNC1(FUNC15(os, dd->dd_object, DD_FIELD_SNAPSHOT_COUNT,
	    sizeof (my_ss_cnt), 1, &my_ss_cnt, tx));
}