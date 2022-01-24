#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_21__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_25__ {int /*<<< orphan*/  sockaddr; TYPE_5__* connection; } ;
struct TYPE_22__ {scalar_t__ socket_errno; TYPE_8__ peer; } ;
typedef  TYPE_3__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_23__ {scalar_t__ log_socket_errors; } ;
typedef  TYPE_4__ ngx_http_lua_loc_conf_t ;
typedef  scalar_t__ ngx_err_t ;
struct TYPE_24__ {int /*<<< orphan*/  read; TYPE_17__* write; int /*<<< orphan*/  addr_text; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_20__ {int /*<<< orphan*/  log; } ;
struct TYPE_19__ {scalar_t__ timer_set; scalar_t__ timedout; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_LUA_SOCKET_FT_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_SOCKET_FT_TIMEOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_17__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_17__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u)
{
    ngx_int_t                    rc;
    ngx_connection_t            *c;
    ngx_http_lua_loc_conf_t     *llcf;

    c = u->peer.connection;

    if (c->write->timedout) {

        llcf = FUNC3(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            FUNC6(&u->peer);
            FUNC10(NGX_LOG_ERR, r->connection->log, 0,
                          "lua tcp socket connect timed out,"
                          " when connecting to %V:%ud",
                          &c->addr_text, FUNC8(u->peer.sockaddr));
        }

        FUNC4(r, u,
                                              NGX_HTTP_LUA_SOCKET_FT_TIMEOUT);
        return;
    }

    if (c->write->timer_set) {
        FUNC0(c->write);
    }

    rc = FUNC7(r, c);
    if (rc != NGX_OK) {
        if (rc > 0) {
            u->socket_errno = (ngx_err_t) rc;
        }

        FUNC4(r, u,
                                              NGX_HTTP_LUA_SOCKET_FT_ERROR);
        return;
    }

    FUNC9(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket connected");

    /* We should delete the current write/read event
     * here because the socket object may not be used immediately
     * on the Lua land, thus causing hot spin around level triggered
     * event poll and wasting CPU cycles. */

    if (FUNC2(c->write, 0) != NGX_OK) {
        FUNC4(r, u,
                                              NGX_HTTP_LUA_SOCKET_FT_ERROR);
        return;
    }

    if (FUNC1(c->read, 0) != NGX_OK) {
        FUNC4(r, u,
                                              NGX_HTTP_LUA_SOCKET_FT_ERROR);
        return;
    }

    FUNC5(r, u);
}