#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zcp_synctask_info_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ zcp_synctask_destroy_info ; 
 TYPE_1__ zcp_synctask_promote_info ; 
 TYPE_1__ zcp_synctask_rollback_info ; 
 TYPE_1__ zcp_synctask_snapshot_info ; 
 int /*<<< orphan*/  zcp_synctask_wrapper ; 

int
FUNC5(lua_State *state, boolean_t sync)
{
	int i;
	zcp_synctask_info_t *zcp_synctask_funcs[] = {
		&zcp_synctask_destroy_info,
		&zcp_synctask_promote_info,
		&zcp_synctask_rollback_info,
		&zcp_synctask_snapshot_info,
		NULL
	};

	FUNC0(state);

	for (i = 0; zcp_synctask_funcs[i] != NULL; i++) {
		zcp_synctask_info_t *info = zcp_synctask_funcs[i];
		FUNC3(state, info);
		FUNC1(state, sync);
		FUNC2(state, &zcp_synctask_wrapper, 2);
		FUNC4(state, -2, info->name);
		info++;
	}

	return (1);
}