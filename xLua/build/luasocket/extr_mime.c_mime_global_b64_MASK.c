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
 size_t FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static int FUNC9(lua_State *L)
{
    UC atom[3];
    size_t isize = 0, asize = 0;
    const UC *input = (UC *) FUNC3(L, 1, NULL, &isize);
    const UC *last = input + isize;
    luaL_Buffer buffer;
    /* end-of-input blackhole */
    if (!input) {
        FUNC6(L);
        FUNC6(L);
        return 2;
    }
    /* make sure we don't confuse buffer stuff with arguments */
    FUNC7(L, 2);
    /* process first part of the input */
    FUNC2(L, &buffer);
    while (input < last) 
        asize = FUNC0(*input++, atom, asize, &buffer);
    input = (UC *) FUNC3(L, 2, NULL, &isize);
    /* if second part is nil, we are done */
    if (!input) {
        size_t osize = 0;
        asize = FUNC1(atom, asize, &buffer);
        FUNC4(&buffer);
        /* if the output is empty  and the input is nil, return nil */
        FUNC8(L, -1, &osize);
        if (osize == 0) FUNC6(L);
        FUNC6(L);
        return 2;
    }
    /* otherwise process the second part */
    last = input + isize;
    while (input < last) 
        asize = FUNC0(*input++, atom, asize, &buffer);
    FUNC4(&buffer);
    FUNC5(L, (char *) atom, asize);
    return 2;
}