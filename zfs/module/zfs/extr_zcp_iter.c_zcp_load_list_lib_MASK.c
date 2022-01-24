#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * gc; } ;
typedef  TYPE_1__ zcp_list_info_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ zcp_bookmarks_list_info ; 
 TYPE_1__ zcp_children_list_info ; 
 TYPE_1__ zcp_clones_list_info ; 
 TYPE_1__ zcp_holds_list_info ; 
 int /*<<< orphan*/  zcp_list_func ; 
 TYPE_1__ zcp_props_list_info ; 
 TYPE_1__ zcp_snapshots_list_info ; 
 TYPE_1__ zcp_system_props_list_info ; 
 TYPE_1__ zcp_user_props_list_info ; 

int
FUNC9(lua_State *state)
{
	int i;
	zcp_list_info_t *zcp_list_funcs[] = {
		&zcp_children_list_info,
		&zcp_snapshots_list_info,
		&zcp_user_props_list_info,
		&zcp_props_list_info,
		&zcp_clones_list_info,
		&zcp_system_props_list_info,
		&zcp_bookmarks_list_info,
		&zcp_holds_list_info,
		NULL
	};

	FUNC1(state);

	for (i = 0; zcp_list_funcs[i] != NULL; i++) {
		zcp_list_info_t *info = zcp_list_funcs[i];

		if (info->gc != NULL) {
			/*
			 * If the function requires garbage collection, create
			 * a metatable with its name and register the __gc
			 * function.
			 */
			(void) FUNC0(state, info->name);
			(void) FUNC6(state, "__gc");
			FUNC4(state, info->gc);
			FUNC8(state, -3);
			FUNC2(state, 1);
		}

		FUNC5(state, info);
		FUNC3(state, &zcp_list_func, 1);
		FUNC7(state, -2, info->name);
		info++;
	}

	return (1);
}