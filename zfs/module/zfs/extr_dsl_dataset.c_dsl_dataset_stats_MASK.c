#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_25__ ;
typedef  struct TYPE_32__   TYPE_22__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  recvname ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_31__ {TYPE_22__* ds_dir; scalar_t__ ds_is_snapshot; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_33__ {scalar_t__ ds_prev_snap_obj; } ;
struct TYPE_32__ {int /*<<< orphan*/ * dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTAG ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_AVAILABLE ; 
 int /*<<< orphan*/  ZFS_PROP_COMPRESSRATIO ; 
 int /*<<< orphan*/  ZFS_PROP_CREATETXG ; 
 int /*<<< orphan*/  ZFS_PROP_CREATION ; 
 int /*<<< orphan*/  ZFS_PROP_DEFER_DESTROY ; 
 int /*<<< orphan*/  ZFS_PROP_GUID ; 
 int /*<<< orphan*/  ZFS_PROP_LOGICALREFERENCED ; 
 int /*<<< orphan*/  ZFS_PROP_OBJSETID ; 
 int /*<<< orphan*/  ZFS_PROP_PREV_SNAP ; 
 int /*<<< orphan*/  ZFS_PROP_REDACT_SNAPS ; 
 int /*<<< orphan*/  ZFS_PROP_REFERENCED ; 
 int /*<<< orphan*/  ZFS_PROP_REFQUOTA ; 
 int /*<<< orphan*/  ZFS_PROP_REFRATIO ; 
 int /*<<< orphan*/  ZFS_PROP_REFRESERVATION ; 
 int /*<<< orphan*/  ZFS_PROP_UNIQUE ; 
 int /*<<< orphan*/  ZFS_PROP_USED ; 
 int /*<<< orphan*/  ZFS_PROP_USERREFS ; 
 int /*<<< orphan*/  ZFS_PROP_WRITTEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 TYPE_25__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_22__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 scalar_t__ FUNC25 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 char* recv_clone_name ; 
 int FUNC34 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 

void
FUNC36(dsl_dataset_t *ds, nvlist_t *nv)
{
	dsl_pool_t *dp = ds->ds_dir->dd_pool;

	FUNC0(FUNC26(dp));

	FUNC28(nv, ZFS_PROP_REFRATIO,
	    FUNC20(ds));
	FUNC28(nv, ZFS_PROP_LOGICALREFERENCED,
	    FUNC14(ds));
	FUNC28(nv, ZFS_PROP_COMPRESSRATIO,
	    FUNC9(ds));
	FUNC28(nv, ZFS_PROP_USED,
	    FUNC23(ds));

	if (ds->ds_is_snapshot) {
		FUNC31(ds, nv);
	} else {
		char buf[ZFS_MAX_DATASET_NAME_LEN];
		if (FUNC16(ds, buf) == 0)
			FUNC27(nv, ZFS_PROP_PREV_SNAP,
			    buf);
		FUNC7(ds->ds_dir, nv);
	}

	nvlist_t *propval = FUNC30();
	FUNC17(ds, propval);
	FUNC29(nv, FUNC35(ZFS_PROP_REDACT_SNAPS),
	    propval);
	FUNC33(propval);

	FUNC28(nv, ZFS_PROP_AVAILABLE,
	    FUNC8(ds));
	FUNC28(nv, ZFS_PROP_REFERENCED,
	    FUNC18(ds));
	FUNC28(nv, ZFS_PROP_CREATION,
	    FUNC10(ds));
	FUNC28(nv, ZFS_PROP_CREATETXG,
	    FUNC11(ds));
	FUNC28(nv, ZFS_PROP_REFQUOTA,
	    FUNC19(ds));
	FUNC28(nv, ZFS_PROP_REFRESERVATION,
	    FUNC21(ds));
	FUNC28(nv, ZFS_PROP_GUID,
	    FUNC13(ds));
	FUNC28(nv, ZFS_PROP_UNIQUE,
	    FUNC22(ds));
	FUNC28(nv, ZFS_PROP_OBJSETID,
	    FUNC15(ds));
	FUNC28(nv, ZFS_PROP_USERREFS,
	    FUNC24(ds));
	FUNC28(nv, ZFS_PROP_DEFER_DESTROY,
	    FUNC12(ds));
	FUNC1(ds, nv);

	if (FUNC5(ds)->ds_prev_snap_obj != 0) {
		uint64_t written;
		if (FUNC25(ds, &written) == 0) {
			FUNC28(nv, ZFS_PROP_WRITTEN,
			    written);
		}
	}

	if (!FUNC3(ds)) {
		/*
		 * A failed "newfs" (e.g. full) resumable receive leaves
		 * the stats set on this dataset.  Check here for the prop.
		 */
		FUNC32(ds, nv);

		/*
		 * A failed incremental resumable receive leaves the
		 * stats set on our child named "%recv".  Check the child
		 * for the prop.
		 */
		/* 6 extra bytes for /%recv */
		char recvname[ZFS_MAX_DATASET_NAME_LEN + 6];
		dsl_dataset_t *recv_ds;
		FUNC4(ds, recvname);
		if (FUNC34(recvname, "/", sizeof (recvname)) <
		    sizeof (recvname) &&
		    FUNC34(recvname, recv_clone_name, sizeof (recvname)) <
		    sizeof (recvname) &&
		    FUNC2(dp, recvname, FTAG, &recv_ds) == 0) {
			FUNC32(recv_ds, nv);
			FUNC6(recv_ds, FTAG);
		}
	}
}