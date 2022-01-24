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

/* Variables and functions */
 int /*<<< orphan*/  CRLF ; 
 int FUNC0 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(lua_State *L)
{
    int ctx = FUNC2(L, 1);
    size_t isize = 0;
    const char *input = FUNC3(L, 2, NULL, &isize);
    const char *last = input + isize;
    const char *marker = FUNC4(L, 3, CRLF);
    luaL_Buffer buffer;
    FUNC1(L, &buffer);
    /* end of input blackhole */
    if (!input) {
       FUNC6(L);
       FUNC7(L, 0);
       return 2;
    }
    /* process all input */
    while (input < last)
        ctx = FUNC0(*input++, ctx, marker, &buffer);
    FUNC5(&buffer);
    FUNC7(L, ctx);
    return 2;
}