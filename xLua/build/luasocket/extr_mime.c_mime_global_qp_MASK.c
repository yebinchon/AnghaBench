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
 int /*<<< orphan*/  CRLF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,char const*,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(lua_State *L)
{

    size_t asize = 0, isize = 0;
    UC atom[3];
    const UC *input = (UC *) FUNC1(L, 1, NULL, &isize);
    const UC *last = input + isize;
    const char *marker = FUNC2(L, 3, CRLF);
    luaL_Buffer buffer;
    /* end-of-input blackhole */
    if (!input) {
        FUNC5(L);
        FUNC5(L);
        return 2;
    }
    /* make sure we don't confuse buffer stuff with arguments */
    FUNC6(L, 3);
    /* process first part of input */
    FUNC0(L, &buffer);
    while (input < last)
        asize = FUNC8(*input++, atom, asize, marker, &buffer);
    input = (UC *) FUNC1(L, 2, NULL, &isize);
    /* if second part is nil, we are done */
    if (!input) {
        asize = FUNC9(atom, asize, &buffer);
        FUNC3(&buffer);
        if (!(*FUNC7(L, -1))) FUNC5(L);
        FUNC5(L);
        return 2;
    }
    /* otherwise process rest of input */
    last = input + isize;
    while (input < last)
        asize = FUNC8(*input++, atom, asize, marker, &buffer);
    FUNC3(&buffer);
    FUNC4(L, (char *) atom, asize);
    return 2;
}