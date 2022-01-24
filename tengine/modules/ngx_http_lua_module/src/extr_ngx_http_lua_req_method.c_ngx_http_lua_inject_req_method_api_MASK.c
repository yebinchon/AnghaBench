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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_get_method ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_req_set_method ; 

void
FUNC2(lua_State *L)
{
    FUNC0(L, ngx_http_lua_ngx_req_get_method);
    FUNC1(L, -2, "get_method");

    FUNC0(L, ngx_http_lua_ngx_req_set_method);
    FUNC1(L, -2, "set_method");
}