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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(lua_State *lua) {
    /* Initial Stack: array */
    FUNC1(lua,"table");
    FUNC5(lua,"sort");
    FUNC2(lua,-2);       /* Stack: array, table, table.sort */
    FUNC6(lua,-3);      /* Stack: array, table, table.sort, array */
    if (FUNC3(lua,1,0,0)) {
        /* Stack: array, table, error */

        /* We are not interested in the error, we assume that the problem is
         * that there are 'false' elements inside the array, so we try
         * again with a slower function but able to handle this case, that
         * is: table.sort(table, __redis__compare_helper) */
        FUNC4(lua,1);             /* Stack: array, table */
        FUNC5(lua,"sort"); /* Stack: array, table, sort */
        FUNC2(lua,-2);       /* Stack: array, table, table.sort */
        FUNC6(lua,-3);      /* Stack: array, table, table.sort, array */
        FUNC1(lua,"__redis__compare_helper");
        /* Stack: array, table, table.sort, array, __redis__compare_helper */
        FUNC0(lua,2,0);
    }
    /* Stack: array (sorted), table */
    FUNC4(lua,1);             /* Stack: array (sorted) */
}