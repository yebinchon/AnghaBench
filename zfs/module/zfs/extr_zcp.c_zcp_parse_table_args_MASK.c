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
 int LUA_TNIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,TYPE_1__ const*,TYPE_1__ const*,char*,...) ; 

__attribute__((used)) static void
FUNC16(lua_State *state, const char *fname,
    const zcp_arg_t *pargs, const zcp_arg_t *kwargs)
{
	int i;
	int type;

	for (i = 0; pargs[i].za_name != NULL; i++) {
		/*
		 * Check the table for this positional argument, leaving it
		 * on the top of the stack once we finish validating it.
		 */
		FUNC5(state, i + 1);
		FUNC1(state, 1);

		type = FUNC12(state, -1);
		if (type == LUA_TNIL) {
			FUNC15(state, fname, pargs, kwargs,
			    "too few arguments");
			FUNC14("unreachable code");
		} else if (type != pargs[i].za_lua_type) {
			FUNC15(state, fname, pargs, kwargs,
			    "arg %d wrong type (is '%s', expected '%s')",
			    i + 1, FUNC13(state, type),
			    FUNC13(state, pargs[i].za_lua_type));
			FUNC14("unreachable code");
		}

		/*
		 * Remove the positional argument from the table.
		 */
		FUNC5(state, i + 1);
		FUNC6(state);
		FUNC9(state, 1);
	}

	for (i = 0; kwargs[i].za_name != NULL; i++) {
		/*
		 * Check the table for this keyword argument, which may be
		 * nil if it was omitted. Leave the value on the top of
		 * the stack after validating it.
		 */
		FUNC0(state, 1, kwargs[i].za_name);

		type = FUNC12(state, -1);
		if (type != LUA_TNIL && type != kwargs[i].za_lua_type) {
			FUNC15(state, fname, pargs, kwargs,
			    "kwarg '%s' wrong type (is '%s', expected '%s')",
			    kwargs[i].za_name, FUNC13(state, type),
			    FUNC13(state, kwargs[i].za_lua_type));
			FUNC14("unreachable code");
		}

		/*
		 * Remove the keyword argument from the table.
		 */
		FUNC6(state);
		FUNC8(state, 1, kwargs[i].za_name);
	}

	/*
	 * Any entries remaining in the table are invalid inputs, print
	 * an error message based on what the entry is.
	 */
	FUNC6(state);
	if (FUNC4(state, 1)) {
		if (FUNC2(state, -2) && FUNC10(state, -2) > 0) {
			FUNC15(state, fname, pargs, kwargs,
			    "too many positional arguments");
		} else if (FUNC3(state, -2)) {
			FUNC15(state, fname, pargs, kwargs,
			    "invalid kwarg '%s'", FUNC11(state, -2));
		} else {
			FUNC15(state, fname, pargs, kwargs,
			    "kwarg keys must be strings");
		}
		FUNC14("unreachable code");
	}

	FUNC7(state, 1);
}