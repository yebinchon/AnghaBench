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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 

int FUNC10(lua_State *L) {
    char buf[32];
    if (!FUNC1(L, 1)) goto error;
    FUNC6(L, "__index");
    FUNC2(L, -2);
    if (!FUNC4(L, -1)) goto error;
    FUNC6(L, "class");
    FUNC2(L, -2);
    if (!FUNC3(L, -1)) goto error;
    FUNC9(buf, "%p", FUNC8(L, 1));
    FUNC5(L, "%s: %s", FUNC7(L, -1), buf);
    return 1;
error:
    FUNC6(L, "invalid object passed to 'auxiliar.c:__tostring'");
    FUNC0(L);
    return 1;
}