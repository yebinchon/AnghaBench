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
 int /*<<< orphan*/  ngx_http_lua_ngx_cookie_time ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_http_time ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_localtime ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_now ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_parse_http_time ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_time ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_today ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_update_time ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_utctime ; 

void
FUNC2(lua_State *L)
{
    FUNC0(L, ngx_http_lua_ngx_utctime);
    FUNC1(L, -2, "utctime");

    FUNC0(L, ngx_http_lua_ngx_time);
    FUNC1(L, -2, "get_now_ts"); /* deprecated */

    FUNC0(L, ngx_http_lua_ngx_localtime);
    FUNC1(L, -2, "get_now"); /* deprecated */

    FUNC0(L, ngx_http_lua_ngx_localtime);
    FUNC1(L, -2, "localtime");

    FUNC0(L, ngx_http_lua_ngx_time);
    FUNC1(L, -2, "time");

    FUNC0(L, ngx_http_lua_ngx_now);
    FUNC1(L, -2, "now");

    FUNC0(L, ngx_http_lua_ngx_update_time);
    FUNC1(L, -2, "update_time");

    FUNC0(L, ngx_http_lua_ngx_today);
    FUNC1(L, -2, "get_today"); /* deprecated */

    FUNC0(L, ngx_http_lua_ngx_today);
    FUNC1(L, -2, "today");

    FUNC0(L, ngx_http_lua_ngx_cookie_time);
    FUNC1(L, -2, "cookie_time");

    FUNC0(L, ngx_http_lua_ngx_http_time);
    FUNC1(L, -2, "http_time");

    FUNC0(L, ngx_http_lua_ngx_parse_http_time);
    FUNC1(L, -2, "parse_http_time");
}