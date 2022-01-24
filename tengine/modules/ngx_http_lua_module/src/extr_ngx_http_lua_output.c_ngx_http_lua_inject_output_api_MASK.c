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
 int /*<<< orphan*/  ngx_http_lua_ngx_eof ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_flush ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_print ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_say ; 
 int /*<<< orphan*/  ngx_http_lua_ngx_send_headers ; 

void
FUNC2(lua_State *L)
{
    FUNC0(L, ngx_http_lua_ngx_send_headers);
    FUNC1(L, -2, "send_headers");

    FUNC0(L, ngx_http_lua_ngx_print);
    FUNC1(L, -2, "print");

    FUNC0(L, ngx_http_lua_ngx_say);
    FUNC1(L, -2, "say");

    FUNC0(L, ngx_http_lua_ngx_flush);
    FUNC1(L, -2, "flush");

    FUNC0(L, ngx_http_lua_ngx_eof);
    FUNC1(L, -2, "eof");
}