#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int za_lua_type; int /*<<< orphan*/ * za_name; } ;
typedef  TYPE_1__ zcp_arg_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_TNONE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,TYPE_1__ const*,TYPE_1__ const*,char*,...) ; 

__attribute__((used)) static void
FUNC6(lua_State *state, const char *fname, const zcp_arg_t *pargs,
    const zcp_arg_t *kwargs)
{
	int i;
	int type;

	for (i = 0; pargs[i].za_name != NULL; i++) {
		type = FUNC2(state, i + 1);
		if (type == LUA_TNONE) {
			FUNC5(state, fname, pargs, kwargs,
			    "too few arguments");
			FUNC4("unreachable code");
		} else if (type != pargs[i].za_lua_type) {
			FUNC5(state, fname, pargs, kwargs,
			    "arg %d wrong type (is '%s', expected '%s')",
			    i + 1, FUNC3(state, type),
			    FUNC3(state, pargs[i].za_lua_type));
			FUNC4("unreachable code");
		}
	}
	if (FUNC0(state) != i) {
		FUNC5(state, fname, pargs, kwargs,
		    "too many positional arguments");
		FUNC4("unreachable code");
	}

	for (i = 0; kwargs[i].za_name != NULL; i++) {
		FUNC1(state);
	}
}