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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(lua_State *L)
{
    size_t asize = 0, isize = 0;
    UC atom[3];
    const UC *input = (UC *) FUNC1(L, 1, NULL, &isize);
    const UC *last = input + isize;
    luaL_Buffer buffer;
    /* end-of-input blackhole */
    if (!input) {
        FUNC4(L);
        FUNC4(L);
        return 2;
    }
    /* make sure we don't confuse buffer stuff with arguments */
    FUNC5(L, 2);
    /* process first part of input */
    FUNC0(L, &buffer);
    while (input < last)
        asize = FUNC7(*input++, atom, asize, &buffer);
    input = (UC *) FUNC1(L, 2, NULL, &isize);
    /* if second part is nil, we are done */
    if (!input) {
        FUNC2(&buffer);
        if (!(*FUNC6(L, -1))) FUNC4(L);
        FUNC4(L);
        return 2;
    } 
    /* otherwise process rest of input */
    last = input + isize;
    while (input < last)
        asize = FUNC7(*input++, atom, asize, &buffer);
    FUNC2(&buffer);
    FUNC3(L, (char *) atom, asize);
    return 2;
}