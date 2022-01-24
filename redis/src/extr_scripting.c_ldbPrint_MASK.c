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
typedef  int /*<<< orphan*/  lua_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char const*) ; 

void FUNC8(lua_State *lua, char *varname) {
    lua_Debug ar;

    int l = 0; /* Stack level. */
    while (FUNC4(lua,l,&ar) != 0) {
        l++;
        const char *name;
        int i = 1; /* Variable index. */
        while((name = FUNC3(lua,&ar,i)) != NULL) {
            i++;
            if (FUNC7(varname,name) == 0) {
                FUNC1(lua,"<value> ");
                FUNC5(lua,1);
                return;
            } else {
                FUNC5(lua,1); /* Discard the var name on the stack. */
            }
        }
    }

    /* Let's try with global vars in two selected cases */
    if (!FUNC7(varname,"ARGV") || !FUNC7(varname,"KEYS")) {
        FUNC2(lua, varname);
        FUNC1(lua,"<value> ");
        FUNC5(lua,1);
    } else {
        FUNC0(FUNC6("No such variable."));
    }
}