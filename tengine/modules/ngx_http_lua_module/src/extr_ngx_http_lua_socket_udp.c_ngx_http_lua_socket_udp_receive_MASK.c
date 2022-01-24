#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_22__ {int /*<<< orphan*/  write_event_handler; TYPE_2__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_20__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_23__ {int waiting; size_t read_timeout; size_t recv_buf_size; int (* prepare_retvals ) (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *) ;TYPE_7__* co_ctx; int /*<<< orphan*/  read_event_handler; scalar_t__ ft_type; TYPE_3__* request; TYPE_1__ udp_connection; } ;
typedef  TYPE_4__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_24__ {scalar_t__ log_socket_errors; } ;
typedef  TYPE_5__ ngx_http_lua_loc_conf_t ;
struct TYPE_25__ {scalar_t__ entered_content_phase; TYPE_7__* cur_co_ctx; } ;
typedef  TYPE_6__ ngx_http_lua_ctx_t ;
struct TYPE_26__ {TYPE_4__* data; int /*<<< orphan*/  cleanup; } ;
typedef  TYPE_7__ ngx_http_lua_co_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_21__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  SOCKET_CTX_INDEX ; 
 int /*<<< orphan*/  UDP_MAX_DATAGRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_run_phases ; 
 TYPE_6__* FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  ngx_http_lua_content_wev_handler ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 scalar_t__ FUNC15 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_http_lua_socket_udp_read_handler ; 
 int FUNC16 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_udp_socket_cleanup ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 size_t FUNC20 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(lua_State *L)
{
    ngx_http_request_t                  *r;
    ngx_http_lua_socket_udp_upstream_t  *u;
    ngx_int_t                            rc;
    ngx_http_lua_ctx_t                  *ctx;
    ngx_http_lua_co_ctx_t               *coctx;
    size_t                               size;
    int                                  nargs;
    ngx_http_lua_loc_conf_t             *llcf;

    nargs = FUNC4(L);
    if (nargs != 1 && nargs != 2) {
        return FUNC2(L, "expecting 1 or 2 arguments "
                          "(including the object), but got %d", nargs);
    }

    r = FUNC14(L);
    if (r == NULL) {
        return FUNC2(L, "no request found");
    }

    FUNC17(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua udp socket calling receive() method");

    FUNC1(L, 1, LUA_TTABLE);

    FUNC8(L, 1, SOCKET_CTX_INDEX);
    u = FUNC9(L, -1);
    FUNC5(L, 1);

    if (u == NULL || u->udp_connection.connection == NULL) {
        llcf = FUNC12(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            FUNC19(NGX_LOG_ERR, r->connection->log, 0,
                          "attempt to receive data on a closed socket: u:%p, "
                          "c:%p", u, u ? u->udp_connection.connection : NULL);
        }

        FUNC7(L);
        FUNC6(L, "closed");
        return 2;
    }

    if (u->request != r) {
        return FUNC2(L, "bad request");
    }

    if (u->ft_type) {
        u->ft_type = 0;
    }

#if 1
    if (u->waiting) {
        FUNC7(L);
        FUNC6(L, "socket busy");
        return 2;
    }
#endif

    FUNC18(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua udp socket read timeout: %M", u->read_timeout);

    size = (size_t) FUNC3(L, 2, UDP_MAX_DATAGRAM_SIZE);
    size = FUNC20(size, UDP_MAX_DATAGRAM_SIZE);

    u->recv_buf_size = size;

    FUNC18(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua udp socket receive buffer size: %uz", u->recv_buf_size);

    rc = FUNC15(r, u);

    if (rc == NGX_ERROR) {
        FUNC0("read failed: %d", (int) u->ft_type);
        rc = FUNC16(r, u, L);
        FUNC0("udp receive retval returned: %d", (int) rc);
        return rc;
    }

    if (rc == NGX_OK) {

        FUNC17(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua udp socket receive done in a single run");

        return FUNC16(r, u, L);
    }

    /* n == NGX_AGAIN */

    u->read_event_handler = ngx_http_lua_socket_udp_read_handler;

    ctx = FUNC11(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC2(L, "no request ctx found");
    }

    coctx = ctx->cur_co_ctx;

    FUNC13(coctx);
    coctx->cleanup = ngx_http_lua_udp_socket_cleanup;
    coctx->data = u;

    if (ctx->entered_content_phase) {
        r->write_event_handler = ngx_http_lua_content_wev_handler;

    } else {
        r->write_event_handler = ngx_http_core_run_phases;
    }

    u->co_ctx = coctx;
    u->waiting = 1;
    u->prepare_retvals = ngx_http_lua_socket_udp_receive_retval_handler;

    return FUNC10(L, 0);
}