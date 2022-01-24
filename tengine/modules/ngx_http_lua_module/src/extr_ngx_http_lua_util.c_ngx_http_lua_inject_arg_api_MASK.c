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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ngx_http_lua_param_get ; 
 int /*<<< orphan*/  ngx_http_lua_param_set ; 

__attribute__((used)) static void
FUNC10(lua_State *L)
{
    FUNC6(L, "arg");
    FUNC4(L);    /*  .arg table aka {} */

    FUNC2(L, 0 /* narr */, 2 /* nrec */);    /*  the metatable */

    FUNC5(L, ngx_http_lua_param_get);
    FUNC8(L, -2, "__index");

    FUNC5(L, ngx_http_lua_param_set);
    FUNC8(L, -2, "__newindex");

    FUNC9(L, -2);    /*  tie the metatable to param table */

    FUNC0("top: %d, type -1: %s", FUNC3(L), FUNC1(L, -1));

    FUNC7(L, -3);    /*  set ngx.arg table */
}