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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void FUNC13(lua_State *lua, sds *argv, int argc) {
    /* Glue the script together if it is composed of multiple arguments. */
    sds code = FUNC10(argv+1,argc-1," ",1);
    sds expr = FUNC7(FUNC12("return "),code);

    /* Try to compile it as an expression, prepending "return ". */
    if (FUNC2(lua,expr,FUNC11(expr),"@ldb_eval")) {
        FUNC4(lua,1);
        /* Failed? Try as a statement. */
        if (FUNC2(lua,code,FUNC11(code),"@ldb_eval")) {
            FUNC0(FUNC6(FUNC8(),"<error> %s",FUNC5(lua,-1)));
            FUNC4(lua,1);
            FUNC9(code);
            return;
        }
    }

    /* Call it. */
    FUNC9(code);
    FUNC9(expr);
    if (FUNC3(lua,0,1,0)) {
        FUNC0(FUNC6(FUNC8(),"<error> %s",FUNC5(lua,-1)));
        FUNC4(lua,1);
        return;
    }
    FUNC1(lua,"<retval> ");
    FUNC4(lua,1);
}