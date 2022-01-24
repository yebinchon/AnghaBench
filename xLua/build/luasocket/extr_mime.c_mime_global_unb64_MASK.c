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
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  int /*<<< orphan*/  UC ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static int FUNC8(lua_State *L)
{
    UC atom[4];
    size_t isize = 0, asize = 0;
    const UC *input = (UC *) FUNC2(L, 1, NULL, &isize);
    const UC *last = input + isize;
    luaL_Buffer buffer;
    /* end-of-input blackhole */
    if (!input) {
        FUNC5(L);
        FUNC5(L);
        return 2;
    }
    /* make sure we don't confuse buffer stuff with arguments */
    FUNC6(L, 2);
    /* process first part of the input */
    FUNC1(L, &buffer);
    while (input < last) 
        asize = FUNC0(*input++, atom, asize, &buffer);
    input = (UC *) FUNC2(L, 2, NULL, &isize);
    /* if second is nil, we are done */
    if (!input) {
        size_t osize = 0;
        FUNC3(&buffer);
        /* if the output is empty  and the input is nil, return nil */
        FUNC7(L, -1, &osize);
        if (osize == 0) FUNC5(L);
        FUNC5(L);
        return 2;
    }
    /* otherwise, process the rest of the input */
    last = input + isize;
    while (input < last) 
        asize = FUNC0(*input++, atom, asize, &buffer);
    FUNC3(&buffer);
    FUNC4(L, (char *) atom, asize);
    return 2;
}