#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_18__ {TYPE_6__* connection; } ;
struct TYPE_20__ {TYPE_2__ udp_connection; } ;
typedef  TYPE_4__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_21__ {scalar_t__ log_socket_errors; } ;
typedef  TYPE_5__ ngx_http_lua_loc_conf_t ;
struct TYPE_22__ {TYPE_15__* read; } ;
typedef  TYPE_6__ ngx_connection_t ;
struct TYPE_17__ {int /*<<< orphan*/  log; } ;
struct TYPE_16__ {scalar_t__ timer_set; scalar_t__ timedout; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_LUA_SOCKET_FT_TIMEOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_15__*) ; 
 TYPE_5__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(ngx_http_request_t *r,
    ngx_http_lua_socket_udp_upstream_t *u)
{
    ngx_connection_t            *c;
    ngx_http_lua_loc_conf_t     *llcf;

    c = u->udp_connection.connection;

    FUNC4(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua udp socket read handler");

    if (c->read->timedout) {
        c->read->timedout = 0;

        llcf = FUNC1(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            FUNC5(NGX_LOG_ERR, r->connection->log, 0,
                          "lua udp socket read timed out");
        }

        FUNC2(r, u,
                                             NGX_HTTP_LUA_SOCKET_FT_TIMEOUT);
        return;
    }

#if 1
    if (c->read->timer_set) {
        FUNC0(c->read);
    }
#endif

    (void) FUNC3(r, u);
}