#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ space_check; int (* func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  kwargs; int /*<<< orphan*/  pargs; int /*<<< orphan*/  name; scalar_t__ blocks_modified; } ;
typedef  TYPE_1__ zcp_synctask_info_t ;
struct TYPE_9__ {int zri_space_used; TYPE_3__* zri_pool; } ;
typedef  TYPE_2__ zcp_run_info_t ;
typedef  int /*<<< orphan*/  zcp_cleanup_t ;
typedef  int /*<<< orphan*/  zcp_cleanup_handler_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
struct TYPE_10__ {int /*<<< orphan*/  dp_root_dir; } ;
typedef  TYPE_3__ dsl_pool_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_11__ {int dd_used_bytes; } ;

/* Variables and functions */
 int DST_AVG_BLKSHIFT ; 
 int /*<<< orphan*/  ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZFS_SPACE_CHECK_NONE ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(lua_State *state)
{
	int err;
	zcp_cleanup_handler_t *zch;
	int num_ret = 1;
	nvlist_t *err_details = FUNC3();

	/*
	 * Make sure err_details is properly freed, even if a fatal error is
	 * thrown during the synctask.
	 */
	zch = FUNC14(state,
	    (zcp_cleanup_t *)&fnvlist_free, err_details);

	zcp_synctask_info_t *info = FUNC8(state, FUNC9(1));
	boolean_t sync = FUNC7(state, FUNC9(2));

	zcp_run_info_t *ri = FUNC15(state);
	dsl_pool_t *dp = ri->zri_pool;

	/* MOS space is triple-dittoed, so we multiply by 3. */
	uint64_t funcspace =
	    ((uint64_t)info->blocks_modified << DST_AVG_BLKSHIFT) * 3;

	FUNC13(state, info->name, info->pargs, info->kwargs);

	err = 0;
	if (info->space_check != ZFS_SPACE_CHECK_NONE) {
		uint64_t quota = FUNC2(dp,
		    info->space_check);
		uint64_t used = FUNC1(dp->dp_root_dir)->dd_used_bytes +
		    ri->zri_space_used;

		if (used + funcspace > quota) {
			err = FUNC0(ENOSPC);
		}
	}

	if (err == 0) {
		err = info->func(state, sync, err_details);
	}

	if (err == 0) {
		ri->zri_space_used += funcspace;
	}

	FUNC6(state, (lua_Number)err);
	if (FUNC5(err_details) > 0) {
		(void) FUNC12(state, err_details, NULL, 0);
		num_ret++;
	}

	FUNC11(state, zch);
	FUNC4(err_details);

	return (num_ret);
}