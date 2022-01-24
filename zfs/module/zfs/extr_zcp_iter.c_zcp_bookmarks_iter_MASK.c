#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_15__ {char* za_name; } ;
typedef  TYPE_3__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_16__ {int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_4__ dsl_pool_t ;
struct TYPE_17__ {scalar_t__ ds_bookmarks_obj; TYPE_2__* ds_dir; int /*<<< orphan*/  ds_object; } ;
typedef  TYPE_5__ dsl_dataset_t ;
struct TYPE_18__ {TYPE_4__* zri_pool; } ;
struct TYPE_14__ {TYPE_1__* dd_pool; } ;
struct TYPE_13__ {int /*<<< orphan*/  dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_FIELD_BOOKMARK_NAMES ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 TYPE_6__* FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(lua_State *state)
{
	char ds_name[ZFS_MAX_DATASET_NAME_LEN];
	char bookmark_name[ZFS_MAX_DATASET_NAME_LEN];
	uint64_t dsobj = FUNC8(state, FUNC9(1));
	uint64_t cursor = FUNC8(state, FUNC9(2));
	dsl_pool_t *dp = FUNC17(state)->zri_pool;
	dsl_dataset_t *ds;
	zap_attribute_t za;
	zap_cursor_t zc;

	int err = FUNC0(dp, dsobj, FTAG, &ds);
	if (err == ENOENT) {
		return (0);
	} else if (err != 0) {
		return (FUNC4(state,
		    "unexpected error %d from dsl_dataset_hold_obj(dsobj)",
		    err));
	}

	if (!FUNC1(ds)) {
		FUNC3(ds, FTAG);
		return (0);
	}

	err = FUNC16(dp->dp_meta_objset, ds->ds_object,
	    DS_FIELD_BOOKMARK_NAMES, sizeof (ds->ds_bookmarks_obj), 1,
	    &ds->ds_bookmarks_obj);
	if (err != 0 && err != ENOENT) {
		FUNC3(ds, FTAG);
		return (FUNC4(state,
		    "unexpected error %d from zap_lookup()", err));
	}
	if (ds->ds_bookmarks_obj == 0) {
		FUNC3(ds, FTAG);
		return (0);
	}

	/* Store the dataset's name so we can append the bookmark's name */
	FUNC2(ds, ds_name);

	FUNC13(&zc, ds->ds_dir->dd_pool->dp_meta_objset,
	    ds->ds_bookmarks_obj, cursor);
	FUNC3(ds, FTAG);

	err = FUNC14(&zc, &za);
	if (err != 0) {
		FUNC12(&zc);
		if (err != ENOENT) {
			return (FUNC4(state,
			    "unexpected error %d from zap_cursor_retrieve()",
			    err));
		}
		return (0);
	}
	FUNC11(&zc);
	cursor = FUNC15(&zc);
	FUNC12(&zc);

	/* Create the full "pool/fs#bookmark" string to return */
	int n = FUNC10(bookmark_name, ZFS_MAX_DATASET_NAME_LEN, "%s#%s",
	    ds_name, za.za_name);
	if (n >= ZFS_MAX_DATASET_NAME_LEN) {
		return (FUNC4(state,
		    "unexpected error %d from snprintf()", ENAMETOOLONG));
	}

	FUNC5(state, cursor);
	FUNC7(state, FUNC9(2));

	(void) FUNC6(state, bookmark_name);
	return (1);
}