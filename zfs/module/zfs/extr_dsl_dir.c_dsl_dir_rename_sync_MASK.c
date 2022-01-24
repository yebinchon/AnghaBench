#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  ss_cnt ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  fs_cnt ;
struct TYPE_23__ {int /*<<< orphan*/  dp_spa; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_24__ {int /*<<< orphan*/  dd_object; int /*<<< orphan*/  dd_myname; struct TYPE_24__* dd_parent; int /*<<< orphan*/  dd_dbuf; TYPE_1__* dd_pool; } ;
typedef  TYPE_3__ dsl_dir_t ;
struct TYPE_25__ {int /*<<< orphan*/  ddra_newname; int /*<<< orphan*/  ddra_oldname; } ;
typedef  TYPE_4__ dsl_dir_rename_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_22__ {int /*<<< orphan*/ * dp_meta_objset; } ;
struct TYPE_21__ {int /*<<< orphan*/  dd_child_dir_zapobj; int /*<<< orphan*/  dd_parent_obj; int /*<<< orphan*/  dd_used_bytes; int /*<<< orphan*/  dd_reserved; int /*<<< orphan*/  dd_uncompressed_bytes; int /*<<< orphan*/  dd_compressed_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DD_FIELD_FILESYSTEM_COUNT ; 
 int /*<<< orphan*/  DD_FIELD_SNAPSHOT_COUNT ; 
 int /*<<< orphan*/  DD_USED_CHILD ; 
 int /*<<< orphan*/  DD_USED_CHILD_RSRV ; 
 TYPE_3__* FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_FS_SS_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__**,char const**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__**) ; 
 TYPE_10__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(void *arg, dmu_tx_t *tx)
{
	dsl_dir_rename_arg_t *ddra = arg;
	dsl_pool_t *dp = FUNC3(tx);
	dsl_dir_t *dd, *newparent;
	const char *mynewname;
	int error;
	objset_t *mos = dp->dp_meta_objset;

	FUNC1(FUNC5(dp, ddra->ddra_oldname, FTAG, &dd, NULL));
	FUNC1(FUNC5(dp, ddra->ddra_newname, FTAG, &newparent,
	    &mynewname));

	/* Log this before we change the name. */
	FUNC12(dd, "rename", tx,
	    "-> %s", ddra->ddra_newname);

	if (newparent != dd->dd_parent) {
		objset_t *os = dd->dd_pool->dp_meta_objset;
		uint64_t fs_cnt = 0;
		uint64_t ss_cnt = 0;

		/*
		 * We already made sure the dd counts were initialized in the
		 * check function.
		 */
		if (FUNC11(dp->dp_spa,
		    SPA_FEATURE_FS_SS_LIMIT)) {
			FUNC1(FUNC15(os, dd->dd_object,
			    DD_FIELD_FILESYSTEM_COUNT, sizeof (fs_cnt), 1,
			    &fs_cnt));
			/* add 1 for the filesystem itself that we're moving */
			fs_cnt++;

			FUNC1(FUNC15(os, dd->dd_object,
			    DD_FIELD_SNAPSHOT_COUNT, sizeof (ss_cnt), 1,
			    &ss_cnt));
		}

		FUNC9(dd->dd_parent, -fs_cnt,
		    DD_FIELD_FILESYSTEM_COUNT, tx);
		FUNC9(newparent, fs_cnt,
		    DD_FIELD_FILESYSTEM_COUNT, tx);

		FUNC9(dd->dd_parent, -ss_cnt,
		    DD_FIELD_SNAPSHOT_COUNT, tx);
		FUNC9(newparent, ss_cnt,
		    DD_FIELD_SNAPSHOT_COUNT, tx);

		FUNC4(dd->dd_parent, DD_USED_CHILD,
		    -FUNC7(dd)->dd_used_bytes,
		    -FUNC7(dd)->dd_compressed_bytes,
		    -FUNC7(dd)->dd_uncompressed_bytes, tx);
		FUNC4(newparent, DD_USED_CHILD,
		    FUNC7(dd)->dd_used_bytes,
		    FUNC7(dd)->dd_compressed_bytes,
		    FUNC7(dd)->dd_uncompressed_bytes, tx);

		if (FUNC7(dd)->dd_reserved >
		    FUNC7(dd)->dd_used_bytes) {
			uint64_t unused_rsrv = FUNC7(dd)->dd_reserved -
			    FUNC7(dd)->dd_used_bytes;

			FUNC4(dd->dd_parent, DD_USED_CHILD_RSRV,
			    -unused_rsrv, 0, 0, tx);
			FUNC4(newparent, DD_USED_CHILD_RSRV,
			    unused_rsrv, 0, 0, tx);
		}
	}

	FUNC2(dd->dd_dbuf, tx);

	/* remove from old parent zapobj */
	error = FUNC16(mos,
	    FUNC7(dd->dd_parent)->dd_child_dir_zapobj,
	    dd->dd_myname, tx);
	FUNC0(error);

	(void) FUNC13(dd->dd_myname, mynewname,
	    sizeof (dd->dd_myname));
	FUNC8(dd->dd_parent, dd);
	FUNC7(dd)->dd_parent_obj = newparent->dd_object;
	FUNC1(FUNC6(dp,
	    newparent->dd_object, NULL, dd, &dd->dd_parent));

	/* add to new parent zapobj */
	FUNC1(FUNC14(mos, FUNC7(newparent)->dd_child_dir_zapobj,
	    dd->dd_myname, 8, 1, &dd->dd_object, tx));

	FUNC17(dp->dp_spa, ddra->ddra_oldname,
	    ddra->ddra_newname, B_TRUE);

	FUNC10(dd);

	FUNC8(newparent, FTAG);
	FUNC8(dd, FTAG);
}