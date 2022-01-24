#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {char* name; int /*<<< orphan*/  currentline; int /*<<< orphan*/  short_src; } ;
typedef  TYPE_1__ lua_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(lua_State *lua) {
    lua_Debug ar;
    int level = 0;

    while(FUNC3(lua,level,&ar)) {
        FUNC2(lua,"Snl",&ar);
        if(FUNC7(ar.short_src,"user_script") != NULL) {
            FUNC0(FUNC4(FUNC5(),"%s %s:",
                (level == 0) ? "In" : "From",
                ar.name ? ar.name : "top level"));
            FUNC1(ar.currentline);
        }
        level++;
    }
    if (level == 0) {
        FUNC0(FUNC6("<error> Can't retrieve Lua stack."));
    }
}