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
typedef  int lua_Number ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(lua_State *L)
{
    size_t isize = 0, state = (size_t) FUNC2(L, 1);
    const char *input = FUNC3(L, 2, NULL, &isize);
    const char *last = input + isize;
    luaL_Buffer buffer;
    /* end-of-input blackhole */
    if (!input) {
        FUNC5(L);
        FUNC6(L, 2);
        return 2;
    }
    /* process all input */
    FUNC1(L, &buffer);
    while (input < last) 
        state = FUNC0(*input++, state, &buffer);
    FUNC4(&buffer);
    FUNC6(L, (lua_Number) state);
    return 2;
}