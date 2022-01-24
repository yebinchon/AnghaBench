#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {char const* ddsa_name; char const* ddha_name; int /*<<< orphan*/  member_0; int /*<<< orphan*/  ddsa_defer; } ;
typedef  TYPE_1__ dsl_destroy_snapshot_arg_t ;
typedef  TYPE_1__ dsl_destroy_head_arg_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  dsl_destroy_head_check ; 
 int /*<<< orphan*/  dsl_destroy_head_sync ; 
 int /*<<< orphan*/  dsl_destroy_snapshot_check ; 
 int /*<<< orphan*/  dsl_destroy_snapshot_sync ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,char const*) ; 

__attribute__((used)) static int
FUNC6(lua_State *state, boolean_t sync, nvlist_t *err_details)
{
	int err;
	const char *dsname = FUNC3(state, 1);

	boolean_t issnap = (FUNC4(dsname, '@') != NULL);

	if (!issnap && !FUNC1(state, 2)) {
		return (FUNC0(state,
		    "'deferred' kwarg only supported for snapshots: %s",
		    dsname));
	}

	if (issnap) {
		dsl_destroy_snapshot_arg_t ddsa = { 0 };
		ddsa.ddsa_name = dsname;
		if (!FUNC1(state, 2)) {
			ddsa.ddsa_defer = FUNC2(state, 2);
		} else {
			ddsa.ddsa_defer = B_FALSE;
		}

		err = FUNC5(state, dsl_destroy_snapshot_check,
		    dsl_destroy_snapshot_sync, &ddsa, sync, dsname);
	} else {
		dsl_destroy_head_arg_t ddha = { 0 };
		ddha.ddha_name = dsname;

		err = FUNC5(state, dsl_destroy_head_check,
		    dsl_destroy_head_sync, &ddha, sync, dsname);
	}

	return (err);
}