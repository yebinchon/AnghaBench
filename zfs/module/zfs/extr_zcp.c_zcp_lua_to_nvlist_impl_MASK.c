#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int EINVAL ; 
#define  LUA_TBOOLEAN 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC16(lua_State *state, int index, nvlist_t *nvl,
    const char *key, int depth)
{
	/*
	 * Verify that we have enough remaining space in the lua stack to parse
	 * a key-value pair and push an error.
	 */
	if (!FUNC7(state, 3)) {
		(void) FUNC9(state, "Lua stack overflow");
		return (1);
	}

	index = FUNC6(state, index);

	switch (FUNC13(state, index)) {
	case LUA_TNIL:
		FUNC0(nvl, key);
		break;
	case LUA_TBOOLEAN:
		FUNC1(nvl, key,
		    FUNC10(state, index));
		break;
	case LUA_TNUMBER:
		FUNC2(nvl, key, FUNC11(state, index));
		break;
	case LUA_TSTRING:
		FUNC4(nvl, key, FUNC12(state, index));
		break;
	case LUA_TTABLE: {
		nvlist_t *value_nvl = FUNC15(state, index, depth);
		if (value_nvl == NULL)
			return (EINVAL);

		FUNC3(nvl, key, value_nvl);
		FUNC5(value_nvl);
		break;
	}
	default:
		(void) FUNC8(state,
		    "Invalid value type '%s' for key '%s'",
		    FUNC14(state, FUNC13(state, index)), key);
		return (EINVAL);
	}

	return (0);
}