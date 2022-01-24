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
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

void FUNC10(lua_State *lua) {
    lua_Debug ar;
    int vars = 0;

    if (FUNC3(lua,0,&ar) != 0) {
        const char *name;
        int i = 1; /* Variable index. */
        while((name = FUNC2(lua,&ar,i)) != NULL) {
            i++;
            if (!FUNC9(name,"(*temporary)")) {
                sds prefix = FUNC5(FUNC6(),"<value> %s = ",name);
                FUNC1(lua,prefix);
                FUNC7(prefix);
                vars++;
            }
            FUNC4(lua,1);
        }
    }

    if (vars == 0) {
        FUNC0(FUNC8("No local variables in the current context."));
    }
}