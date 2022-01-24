#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_26__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_27__ {int /*<<< orphan*/  log; int /*<<< orphan*/  log_error; scalar_t__ connection; } ;
typedef  TYPE_3__ ngx_peer_connection_t ;
typedef  void* ngx_msec_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_28__ {TYPE_1__* connection; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_29__ {int /*<<< orphan*/ * socket_pool; TYPE_6__* conf; void* read_timeout; void* send_timeout; void* connect_timeout; TYPE_3__ peer; TYPE_4__* request; scalar_t__ raw_downstream; scalar_t__ body_downstream; } ;
typedef  TYPE_5__ ngx_http_lua_socket_tcp_upstream_t ;
typedef  int /*<<< orphan*/  ngx_http_lua_socket_pool_t ;
struct TYPE_30__ {scalar_t__ pool_size; void* read_timeout; void* send_timeout; void* connect_timeout; } ;
typedef  TYPE_6__ ngx_http_lua_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_25__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int LUA_REGISTRYINDEX ; 
#define  LUA_TNIL 130 
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 scalar_t__ LUA_TTABLE ; 
 int /*<<< orphan*/  NGX_ERROR_ERR ; 
 int NGX_HTTP_LUA_CONTEXT_ACCESS ; 
 int NGX_HTTP_LUA_CONTEXT_CONTENT ; 
 int NGX_HTTP_LUA_CONTEXT_REWRITE ; 
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ; 
 int NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH ; 
 int NGX_HTTP_LUA_CONTEXT_TIMER ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  SOCKET_CONNECT_TIMEOUT_INDEX ; 
 int /*<<< orphan*/  SOCKET_CTX_INDEX ; 
 int /*<<< orphan*/  SOCKET_KEY_INDEX ; 
 int /*<<< orphan*/  SOCKET_READ_TIMEOUT_INDEX ; 
 int /*<<< orphan*/  SOCKET_SEND_TIMEOUT_INDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 char* FUNC15 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int) ; 
 void* FUNC27 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *,int) ; 
 int FUNC29 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC30 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC31 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC35 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC38 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__,scalar_t__,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  socket_pool_key ; 
 int /*<<< orphan*/  upstream_udata_metatable_key ; 

__attribute__((used)) static int
FUNC43(lua_State *L)
{
    ngx_http_request_t          *r;
    ngx_http_lua_ctx_t          *ctx;
    int                          port;
    int                          n;
    u_char                      *p;
    size_t                       len;
    ngx_http_lua_loc_conf_t     *llcf;
    ngx_peer_connection_t       *pc;
    int                          connect_timeout, send_timeout, read_timeout;
    unsigned                     custom_pool;
    int                          key_index;
    ngx_int_t                    backlog;
    ngx_int_t                    pool_size;
    ngx_str_t                    key;
    const char                  *msg;

    ngx_http_lua_socket_tcp_upstream_t      *u;

    ngx_http_lua_socket_pool_t              *spool;

    n = FUNC9(L);
    if (n != 2 && n != 3 && n != 4) {
        return FUNC5(L, "ngx.socket connect: expecting 2, 3, or 4 "
                          "arguments (including the object), but seen %d", n);
    }

    r = FUNC33(L);
    if (r == NULL) {
        return FUNC5(L, "no request found");
    }

    ctx = FUNC30(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC5(L, "no ctx found");
    }

    FUNC32(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT
                               | NGX_HTTP_LUA_CONTEXT_TIMER
                               | NGX_HTTP_LUA_CONTEXT_SSL_CERT
                               | NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH);

    FUNC4(L, 1, LUA_TTABLE);

    p = (u_char *) FUNC3(L, 2, &len);

    backlog = -1;
    key_index = 2;
    pool_size = 0;
    custom_pool = 0;
    llcf = FUNC31(r, ngx_http_lua_module);

    if (FUNC28(L, n) == LUA_TTABLE) {

        /* found the last optional option table */

        FUNC8(L, n, "pool_size");

        if (FUNC12(L, -1)) {
            pool_size = (ngx_int_t) FUNC24(L, -1);

            if (pool_size <= 0) {
                msg = FUNC15(L, "bad \"pool_size\" option value: %i",
                                      pool_size);
                return FUNC1(L, n, msg);
            }

        } else if (!FUNC11(L, -1)) {
            msg = FUNC15(L, "bad \"pool_size\" option type: %s",
                                  FUNC29(L, FUNC28(L, -1)));
            return FUNC1(L, n, msg);
        }

        FUNC14(L, 1);

        FUNC8(L, n, "backlog");

        if (FUNC12(L, -1)) {
            backlog = (ngx_int_t) FUNC24(L, -1);

            if (backlog < 0) {
                msg = FUNC15(L, "bad \"backlog\" option value: %i",
                                      backlog);
                return FUNC1(L, n, msg);
            }

            /* use default value for pool size if only backlog specified */
            if (pool_size == 0) {
                pool_size = llcf->pool_size;
            }
        }

        FUNC14(L, 1);

        FUNC8(L, n, "pool");

        switch (FUNC28(L, -1)) {
        case LUA_TNUMBER:
            FUNC26(L, -1);
            /* FALLTHROUGH */

        case LUA_TSTRING:
            custom_pool = 1;

            FUNC19(L, -1);
            FUNC22(L, 1, SOCKET_KEY_INDEX);

            key_index = n + 1;

            break;

        case LUA_TNIL:
            FUNC14(L, 2);
            break;

        default:
            msg = FUNC15(L, "bad \"pool\" option type: %s",
                                  FUNC6(L, -1));
            FUNC1(L, n, msg);
            break;
        }

        n--;
    }

    /* the fourth argument is not a table */
    if (n == 4) {
        FUNC14(L, 1);
        n--;
    }

    if (n == 3) {
        port = FUNC2(L, 3);

        if (port < 0 || port > 65535) {
            FUNC18(L);
            FUNC15(L, "bad port number: %d", port);
            return 2;
        }

        if (!custom_pool) {
            FUNC17(L, ":");
            FUNC10(L, 3);
            FUNC7(L, 3);
        }

        FUNC0("socket key: %s", FUNC26(L, -1));

    } else { /* n == 2 */
        port = 0;
    }

    if (!custom_pool) {
        /* the key's index is 2 */

        FUNC19(L, 2);
        FUNC22(L, 1, SOCKET_KEY_INDEX);
    }

    FUNC21(L, 1, SOCKET_CTX_INDEX);
    u = FUNC27(L, -1);
    FUNC14(L, 1);

    if (u) {
        if (u->request && u->request != r) {
            return FUNC5(L, "bad request");
        }

        FUNC35(r, u, L);
        FUNC36(r, u, L);
        FUNC37(r, u, L);

        if (u->body_downstream || u->raw_downstream) {
            return FUNC5(L, "attempt to re-connect a request socket");
        }

        if (u->peer.connection) {
            FUNC41(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "lua tcp socket reconnect without shutting down");

            FUNC40(r, u);
        }

        FUNC41(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua reuse socket upstream ctx");

    } else {
        u = FUNC13(L, sizeof(ngx_http_lua_socket_tcp_upstream_t));
        if (u == NULL) {
            return FUNC5(L, "no memory");
        }

#if 1
        FUNC16(L, FUNC34(
                              upstream_udata_metatable_key));
        FUNC20(L, LUA_REGISTRYINDEX);
        FUNC23(L, -2);
#endif

        FUNC22(L, 1, SOCKET_CTX_INDEX);
    }

    FUNC42(u, sizeof(ngx_http_lua_socket_tcp_upstream_t));

    u->request = r; /* set the controlling request */

    u->conf = llcf;

    pc = &u->peer;

    pc->log = r->connection->log;
    pc->log_error = NGX_ERROR_ERR;

    FUNC0("lua peer connection log: %p", pc->log);

    FUNC21(L, 1, SOCKET_CONNECT_TIMEOUT_INDEX);
    FUNC21(L, 1, SOCKET_SEND_TIMEOUT_INDEX);
    FUNC21(L, 1, SOCKET_READ_TIMEOUT_INDEX);

    read_timeout = (ngx_int_t) FUNC24(L, -1);
    send_timeout = (ngx_int_t) FUNC24(L, -2);
    connect_timeout = (ngx_int_t) FUNC24(L, -3);

    FUNC14(L, 3);

    if (connect_timeout > 0) {
        u->connect_timeout = (ngx_msec_t) connect_timeout;

    } else {
        u->connect_timeout = u->conf->connect_timeout;
    }

    if (send_timeout > 0) {
        u->send_timeout = (ngx_msec_t) send_timeout;

    } else {
        u->send_timeout = u->conf->send_timeout;
    }

    if (read_timeout > 0) {
        u->read_timeout = (ngx_msec_t) read_timeout;

    } else {
        u->read_timeout = u->conf->read_timeout;
    }

    FUNC16(L, FUNC34(socket_pool_key));
    FUNC20(L, LUA_REGISTRYINDEX); /* table */
    FUNC19(L, key_index); /* key */

    FUNC20(L, -2);
    spool = FUNC27(L, -1);
    FUNC14(L, 1);

    if (spool != NULL) {
        u->socket_pool = spool;

    } else if (pool_size > 0) {
        FUNC19(L, key_index);
        key.data = (u_char *) FUNC25(L, -1, &key.len);

        FUNC39(L, r, key, pool_size,
                                                   backlog, &spool);
        u->socket_pool = spool;
    }

    return FUNC38(L, u, r, ctx, p,
                                                  len, port, 0);
}