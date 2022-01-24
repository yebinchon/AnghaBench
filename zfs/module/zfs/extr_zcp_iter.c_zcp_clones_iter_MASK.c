#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_11__ {int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_12__ {int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
struct TYPE_15__ {scalar_t__ ds_next_clones_obj; } ;
struct TYPE_14__ {TYPE_2__* zri_pool; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 TYPE_7__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(lua_State *state)
{
	int err;
	char clonename[ZFS_MAX_DATASET_NAME_LEN];
	uint64_t dsobj = FUNC8(state, FUNC9(1));
	uint64_t cursor = FUNC8(state, FUNC9(2));
	dsl_pool_t *dp = FUNC15(state)->zri_pool;
	dsl_dataset_t *ds, *clone;
	zap_attribute_t za;
	zap_cursor_t zc;

	err = FUNC0(dp, dsobj, FTAG, &ds);
	if (err == ENOENT) {
		return (0);
	} else if (err != 0) {
		return (FUNC4(state,
		    "unexpected error %d from dsl_dataset_hold_obj(dsobj)",
		    err));
	}

	if (FUNC1(ds)->ds_next_clones_obj == 0) {
		FUNC2(ds, FTAG);
		return (0);
	}

	FUNC12(&zc, dp->dp_meta_objset,
	    FUNC1(ds)->ds_next_clones_obj, cursor);
	FUNC2(ds, FTAG);

	err = FUNC13(&zc, &za);
	if (err != 0) {
		FUNC11(&zc);
		if (err != ENOENT) {
			return (FUNC4(state,
			    "unexpected error %d from zap_cursor_retrieve()",
			    err));
		}
		return (0);
	}
	FUNC10(&zc);
	cursor = FUNC14(&zc);
	FUNC11(&zc);

	err = FUNC0(dp, za.za_first_integer, FTAG, &clone);
	if (err != 0) {
		return (FUNC4(state,
		    "unexpected error %d from "
		    "dsl_dataset_hold_obj(za_first_integer)", err));
	}

	FUNC3(clone->ds_dir, clonename);
	FUNC2(clone, FTAG);

	FUNC5(state, cursor);
	FUNC7(state, FUNC9(2));

	(void) FUNC6(state, clonename);
	return (1);
}