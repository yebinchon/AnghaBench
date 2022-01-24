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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

int
FUNC9(lua_State *L)
{
    if (!FUNC4(L, 1)) { /* 'message' not a string? */
        return 1;  /* keep it intact */
    }

    FUNC2(L, "debug");
    if (!FUNC5(L, -1)) {
        FUNC6(L, 1);
        return 1;
    }

    FUNC1(L, -1, "traceback");
    if (!FUNC3(L, -1)) {
        FUNC6(L, 2);
        return 1;
    }

    FUNC8(L, 1);  /* pass error message */
    FUNC7(L, 2);  /* skip this function and traceback */
    FUNC0(L, 2, 1);  /* call debug.traceback */
    return 1;
}