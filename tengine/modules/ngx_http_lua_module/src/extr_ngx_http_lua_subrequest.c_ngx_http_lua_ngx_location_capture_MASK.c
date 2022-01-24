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
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(lua_State *L)
{
    int                 n;

    n = FUNC2(L);

    if (n != 1 && n != 2) {
        return FUNC0(L, "expecting one or two arguments");
    }

    FUNC1(L, n, 0); /* uri opts? table  */
    FUNC3(L, 1); /* table uri opts? */
    if (n == 1) { /* table uri */
        FUNC4(L, 1, 1); /* table */

    } else { /* table uri opts */
        FUNC4(L, 1, 2); /* table uri */
        FUNC4(L, 1, 1); /* table */
    }

    FUNC1(L, 1, 0); /* table table' */
    FUNC3(L, 1);   /* table' table */
    FUNC4(L, 1, 1); /* table' */

    return FUNC5(L);
}