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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_header_get ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_header_set ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_resp_get_headers ; 

void
FUNC5(lua_State *L)
{
    FUNC1(L);    /* .header */

    FUNC0(L, 0, 2); /* metatable for .header */
    FUNC2(L, ngx_http_lua_ngx_header_get);
    FUNC3(L, -2, "__index");
    FUNC2(L, ngx_http_lua_ngx_header_set);
    FUNC3(L, -2, "__newindex");
    FUNC4(L, -2);

    FUNC3(L, -2, "header");

    FUNC0(L, 0, 1); /* .resp */

    FUNC2(L, ngx_http_lua_ngx_resp_get_headers);
    FUNC3(L, -2, "get_headers");

    FUNC3(L, -2, "resp");
}