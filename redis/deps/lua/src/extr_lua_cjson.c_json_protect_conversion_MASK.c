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
 int LUA_ERRRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(lua_State *l)
{
    int err;

    /* Deliberately throw an error for invalid arguments */
    FUNC0(l, FUNC2(l) == 1, 1, "expected 1 argument");

    /* pcall() the function stored as upvalue(1) */
    FUNC6(l, FUNC7(1));
    FUNC3(l, 1);
    err = FUNC4(l, 1, 1, 0);
    if (!err)
        return 1;

    if (err == LUA_ERRRUN) {
        FUNC5(l);
        FUNC3(l, -2);
        return 2;
    }

    /* Since we are not using a custom error handler, the only remaining
     * errors are memory related */
    return FUNC1(l, "Memory allocation error in CJSON protected call");
}