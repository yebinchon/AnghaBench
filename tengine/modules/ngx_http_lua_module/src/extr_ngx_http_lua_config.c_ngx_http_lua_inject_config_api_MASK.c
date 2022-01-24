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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  nginx_version ; 
 int /*<<< orphan*/  ngx_http_lua_config_configure ; 
 int /*<<< orphan*/  ngx_http_lua_config_prefix ; 
 int /*<<< orphan*/  ngx_http_lua_version ; 

void
FUNC6(lua_State *L)
{
    /* ngx.config */

    FUNC0(L, 0, 6 /* nrec */);    /* .config */

#if (NGX_DEBUG)
    lua_pushboolean(L, 1);
#else
    FUNC1(L, 0);
#endif
    FUNC5(L, -2, "debug");

    FUNC2(L, ngx_http_lua_config_prefix);
    FUNC5(L, -2, "prefix");

    FUNC3(L, nginx_version);
    FUNC5(L, -2, "nginx_version");

    FUNC3(L, ngx_http_lua_version);
    FUNC5(L, -2, "ngx_lua_version");

    FUNC2(L, ngx_http_lua_config_configure);
    FUNC5(L, -2, "nginx_configure");

    FUNC4(L, "http");
    FUNC5(L, -2, "subsystem");

    FUNC5(L, -2, "config");
}