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
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_LOG_CRIT ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  downstream_udata_metatable_key ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_socket_cleanup_compiled_pattern ; 
 int /*<<< orphan*/  ngx_http_lua_socket_downstream_destroy ; 
 int /*<<< orphan*/  ngx_http_lua_socket_shutdown_pool ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_close ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_connect ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_getreusedtimes ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_receive ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_receiveany ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_receiveuntil ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_send ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_setkeepalive ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_setoption ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_settimeout ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_settimeouts ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_sslhandshake ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_upstream_destroy ; 
 int /*<<< orphan*/  ngx_http_lua_ssl_free_session ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  pattern_udata_metatable_key ; 
 int /*<<< orphan*/  pool_udata_metatable_key ; 
 int /*<<< orphan*/  raw_req_socket_metatable_key ; 
 int /*<<< orphan*/  req_socket_metatable_key ; 
 int /*<<< orphan*/  ssl_session_metatable_key ; 
 int /*<<< orphan*/  tcp_socket_metatable_key ; 
 int /*<<< orphan*/  upstream_udata_metatable_key ; 

void
FUNC9(ngx_log_t *log, lua_State *L)
{
    ngx_int_t         rc;

    FUNC1(L, 0, 4 /* nrec */);    /* ngx.socket */

    FUNC2(L, ngx_http_lua_socket_tcp);
    FUNC4(L, -1);
    FUNC6(L, -3, "tcp");
    FUNC6(L, -2, "stream");

    {
        const char  buf[] = "local sock = ngx.socket.tcp()"
                            " local ok, err = sock:connect(...)"
                            " if ok then return sock else return nil, err end";

        rc = FUNC0(L, buf, sizeof(buf) - 1, "=ngx.socket.connect");
    }

    if (rc != NGX_OK) {
        FUNC8(NGX_LOG_CRIT, log, 0,
                      "failed to load Lua code for ngx.socket.connect(): %i",
                      rc);

    } else {
        FUNC6(L, -2, "connect");
    }

    FUNC6(L, -2, "socket");

    /* {{{req socket object metatable */
    FUNC3(L, FUNC7(
                          req_socket_metatable_key));
    FUNC1(L, 0 /* narr */, 5 /* nrec */);

    FUNC2(L, ngx_http_lua_socket_tcp_receive);
    FUNC6(L, -2, "receive");

    FUNC2(L, ngx_http_lua_socket_tcp_receiveuntil);
    FUNC6(L, -2, "receiveuntil");

    FUNC2(L, ngx_http_lua_socket_tcp_settimeout);
    FUNC6(L, -2, "settimeout"); /* ngx socket mt */

    FUNC2(L, ngx_http_lua_socket_tcp_settimeouts);
    FUNC6(L, -2, "settimeouts"); /* ngx socket mt */

    FUNC4(L, -1);
    FUNC6(L, -2, "__index");

    FUNC5(L, LUA_REGISTRYINDEX);
    /* }}} */

    /* {{{raw req socket object metatable */
    FUNC3(L, FUNC7(
                          raw_req_socket_metatable_key));
    FUNC1(L, 0 /* narr */, 6 /* nrec */);

    FUNC2(L, ngx_http_lua_socket_tcp_receive);
    FUNC6(L, -2, "receive");

    FUNC2(L, ngx_http_lua_socket_tcp_receiveuntil);
    FUNC6(L, -2, "receiveuntil");

    FUNC2(L, ngx_http_lua_socket_tcp_send);
    FUNC6(L, -2, "send");

    FUNC2(L, ngx_http_lua_socket_tcp_settimeout);
    FUNC6(L, -2, "settimeout"); /* ngx socket mt */

    FUNC2(L, ngx_http_lua_socket_tcp_settimeouts);
    FUNC6(L, -2, "settimeouts"); /* ngx socket mt */

    FUNC4(L, -1);
    FUNC6(L, -2, "__index");

    FUNC5(L, LUA_REGISTRYINDEX);
    /* }}} */

    /* {{{tcp object metatable */
    FUNC3(L, FUNC7(
                          tcp_socket_metatable_key));
    FUNC1(L, 0 /* narr */, 12 /* nrec */);

    FUNC2(L, ngx_http_lua_socket_tcp_connect);
    FUNC6(L, -2, "connect");

#if (NGX_HTTP_SSL)

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_sslhandshake);
    lua_setfield(L, -2, "sslhandshake");

#endif

    FUNC2(L, ngx_http_lua_socket_tcp_receive);
    FUNC6(L, -2, "receive");

    FUNC2(L, ngx_http_lua_socket_tcp_receiveany);
    FUNC6(L, -2, "receiveany");

    FUNC2(L, ngx_http_lua_socket_tcp_receiveuntil);
    FUNC6(L, -2, "receiveuntil");

    FUNC2(L, ngx_http_lua_socket_tcp_send);
    FUNC6(L, -2, "send");

    FUNC2(L, ngx_http_lua_socket_tcp_close);
    FUNC6(L, -2, "close");

    FUNC2(L, ngx_http_lua_socket_tcp_setoption);
    FUNC6(L, -2, "setoption");

    FUNC2(L, ngx_http_lua_socket_tcp_settimeout);
    FUNC6(L, -2, "settimeout"); /* ngx socket mt */

    FUNC2(L, ngx_http_lua_socket_tcp_settimeouts);
    FUNC6(L, -2, "settimeouts"); /* ngx socket mt */

    FUNC2(L, ngx_http_lua_socket_tcp_getreusedtimes);
    FUNC6(L, -2, "getreusedtimes");

    FUNC2(L, ngx_http_lua_socket_tcp_setkeepalive);
    FUNC6(L, -2, "setkeepalive");

    FUNC4(L, -1);
    FUNC6(L, -2, "__index");
    FUNC5(L, LUA_REGISTRYINDEX);
    /* }}} */

    /* {{{upstream userdata metatable */
    FUNC3(L, FUNC7(
                          upstream_udata_metatable_key));
    FUNC1(L, 0 /* narr */, 1 /* nrec */); /* metatable */
    FUNC2(L, ngx_http_lua_socket_tcp_upstream_destroy);
    FUNC6(L, -2, "__gc");
    FUNC5(L, LUA_REGISTRYINDEX);
    /* }}} */

    /* {{{downstream userdata metatable */
    FUNC3(L, FUNC7(
                          downstream_udata_metatable_key));
    FUNC1(L, 0 /* narr */, 1 /* nrec */); /* metatable */
    FUNC2(L, ngx_http_lua_socket_downstream_destroy);
    FUNC6(L, -2, "__gc");
    FUNC5(L, LUA_REGISTRYINDEX);
    /* }}} */

    /* {{{socket pool userdata metatable */
    FUNC3(L, FUNC7(
                          pool_udata_metatable_key));
    FUNC1(L, 0, 1); /* metatable */
    FUNC2(L, ngx_http_lua_socket_shutdown_pool);
    FUNC6(L, -2, "__gc");
    FUNC5(L, LUA_REGISTRYINDEX);
    /* }}} */

    /* {{{socket compiled pattern userdata metatable */
    FUNC3(L, FUNC7(
                          pattern_udata_metatable_key));
    FUNC1(L, 0 /* narr */, 1 /* nrec */); /* metatable */
    FUNC2(L, ngx_http_lua_socket_cleanup_compiled_pattern);
    FUNC6(L, -2, "__gc");
    FUNC5(L, LUA_REGISTRYINDEX);
    /* }}} */

#if (NGX_HTTP_SSL)

    /* {{{ssl session userdata metatable */
    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          ssl_session_metatable_key));
    lua_createtable(L, 0 /* narr */, 1 /* nrec */); /* metatable */
    lua_pushcfunction(L, ngx_http_lua_ssl_free_session);
    lua_setfield(L, -2, "__gc");
    lua_rawset(L, LUA_REGISTRYINDEX);
    /* }}} */

#endif
}