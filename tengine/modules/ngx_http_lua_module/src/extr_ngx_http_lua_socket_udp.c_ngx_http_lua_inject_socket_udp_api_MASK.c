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
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_socket_udp ; 
 int /*<<< orphan*/  ngx_http_lua_socket_udp_close ; 
 int /*<<< orphan*/  ngx_http_lua_socket_udp_receive ; 
 int /*<<< orphan*/  ngx_http_lua_socket_udp_send ; 
 int /*<<< orphan*/  ngx_http_lua_socket_udp_setpeername ; 
 int /*<<< orphan*/  ngx_http_lua_socket_udp_settimeout ; 
 int /*<<< orphan*/  ngx_http_lua_socket_udp_upstream_destroy ; 
 int /*<<< orphan*/  socket_udp_metatable_key ; 
 int /*<<< orphan*/  udp_udata_metatable_key ; 

void
FUNC9(ngx_log_t *log, lua_State *L)
{
    FUNC1(L, -1, "socket"); /* ngx socket */

    FUNC3(L, ngx_http_lua_socket_udp);
    FUNC7(L, -2, "udp"); /* ngx socket */

    /* udp socket object metatable */
    FUNC4(L, FUNC8(
                          socket_udp_metatable_key));
    FUNC0(L, 0 /* narr */, 6 /* nrec */);

    FUNC3(L, ngx_http_lua_socket_udp_setpeername);
    FUNC7(L, -2, "setpeername"); /* ngx socket mt */

    FUNC3(L, ngx_http_lua_socket_udp_send);
    FUNC7(L, -2, "send");

    FUNC3(L, ngx_http_lua_socket_udp_receive);
    FUNC7(L, -2, "receive");

    FUNC3(L, ngx_http_lua_socket_udp_settimeout);
    FUNC7(L, -2, "settimeout"); /* ngx socket mt */

    FUNC3(L, ngx_http_lua_socket_udp_close);
    FUNC7(L, -2, "close"); /* ngx socket mt */

    FUNC5(L, -1);
    FUNC7(L, -2, "__index");
    FUNC6(L, LUA_REGISTRYINDEX);
    /* }}} */

    /* udp socket object metatable */
    FUNC4(L, FUNC8(
                          udp_udata_metatable_key));
    FUNC0(L, 0 /* narr */, 1 /* nrec */); /* metatable */
    FUNC3(L, ngx_http_lua_socket_udp_upstream_destroy);
    FUNC7(L, -2, "__gc");
    FUNC6(L, LUA_REGISTRYINDEX);
    /* }}} */

    FUNC2(L, 1);
}