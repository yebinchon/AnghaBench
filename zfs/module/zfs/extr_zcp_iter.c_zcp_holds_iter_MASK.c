#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_13__ {int /*<<< orphan*/  za_first_integer; int /*<<< orphan*/  za_name; } ;
typedef  TYPE_3__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_14__ {TYPE_2__* ds_dir; } ;
typedef  TYPE_4__ dsl_dataset_t ;
struct TYPE_16__ {scalar_t__ ds_userrefs_obj; } ;
struct TYPE_15__ {int /*<<< orphan*/ * zri_pool; } ;
struct TYPE_12__ {TYPE_1__* dd_pool; } ;
struct TYPE_11__ {int /*<<< orphan*/  dp_meta_objset; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**) ; 
 TYPE_8__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(lua_State *state)
{
	uint64_t dsobj = FUNC7(state, FUNC8(1));
	uint64_t cursor = FUNC7(state, FUNC8(2));
	dsl_pool_t *dp = FUNC14(state)->zri_pool;
	dsl_dataset_t *ds;
	zap_attribute_t za;
	zap_cursor_t zc;

	int err = FUNC0(dp, dsobj, FTAG, &ds);
	if (err == ENOENT) {
		return (0);
	} else if (err != 0) {
		return (FUNC3(state,
		    "unexpected error %d from dsl_dataset_hold_obj(dsobj)",
		    err));
	}

	if (FUNC1(ds)->ds_userrefs_obj == 0) {
		FUNC2(ds, FTAG);
		return (0);
	}

	FUNC11(&zc, ds->ds_dir->dd_pool->dp_meta_objset,
	    FUNC1(ds)->ds_userrefs_obj, cursor);
	FUNC2(ds, FTAG);

	err = FUNC12(&zc, &za);
	if (err != 0) {
		FUNC10(&zc);
		if (err != ENOENT) {
			return (FUNC3(state,
			    "unexpected error %d from zap_cursor_retrieve()",
			    err));
		}
		return (0);
	}
	FUNC9(&zc);
	cursor = FUNC13(&zc);
	FUNC10(&zc);

	FUNC4(state, cursor);
	FUNC6(state, FUNC8(2));

	(void) FUNC5(state, za.za_name);
	(void) FUNC4(state, za.za_first_integer);
	return (2);
}