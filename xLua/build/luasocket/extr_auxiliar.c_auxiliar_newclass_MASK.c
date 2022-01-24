#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {char const* name; int /*<<< orphan*/  func; } ;
typedef  TYPE_1__ luaL_Reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(lua_State *L, const char *classname, luaL_Reg *func) {
    FUNC0(L, classname); /* mt */
    /* create __index table to place methods */
    FUNC4(L, "__index");    /* mt,"__index" */
    FUNC1(L);                 /* mt,"__index",it */ 
    /* put class name into class metatable */
    FUNC4(L, "class");      /* mt,"__index",it,"class" */
    FUNC4(L, classname);    /* mt,"__index",it,"class",classname */
    FUNC5(L, -3);               /* mt,"__index",it */
    /* pass all methods that start with _ to the metatable, and all others
     * to the index table */
    for (; func->name; func++) {     /* mt,"__index",it */
        FUNC4(L, func->name);
        FUNC3(L, func->func);
        FUNC5(L, func->name[0] == '_' ? -5: -3);
    }
    FUNC5(L, -3);               /* mt */
    FUNC2(L, 1);
}