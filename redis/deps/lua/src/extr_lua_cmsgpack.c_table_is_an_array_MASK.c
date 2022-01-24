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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int lua_Integer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LUA_TNUMBER ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10(lua_State *L) {
    int count = 0, max = 0;
#if LUA_VERSION_NUM < 503
    lua_Number n;
#else
    lua_Integer n;
#endif

    /* Stack top on function entry */
    int stacktop;

    stacktop = FUNC1(L);

    FUNC5(L);
    while(FUNC3(L,-2)) {
        /* Stack: ... key value */
        FUNC4(L,1); /* Stack: ... key */
        /* The <= 0 check is valid here because we're comparing indexes. */
#if LUA_VERSION_NUM < 503
        if ((LUA_TNUMBER != FUNC9(L,-1)) || (n = FUNC8(L, -1)) <= 0 ||
            !FUNC0(n))
#else
        if (!lua_isinteger(L,-1) || (n = lua_tointeger(L, -1)) <= 0)
#endif
        {
            FUNC6(L, stacktop);
            return 0;
        }
        max = (n > max ? n : max);
        count++;
    }
    /* We have the total number of elements in "count". Also we have
     * the max index encountered in "max". We can't reach this code
     * if there are indexes <= 0. If you also note that there can not be
     * repeated keys into a table, you have that if max==count you are sure
     * that there are all the keys form 1 to count (both included). */
    FUNC6(L, stacktop);
    return max == count;
}