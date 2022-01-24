#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_17__ {int /*<<< orphan*/  read_event_handler; TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_18__ {int ft_type; int no_close; scalar_t__ bufs_in; scalar_t__ body_downstream; scalar_t__ raw_downstream; } ;
typedef  TYPE_3__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_19__ {scalar_t__ check_client_abort; } ;
typedef  TYPE_4__ ngx_http_lua_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_http_lua_ctx_t ;
struct TYPE_20__ {scalar_t__ active; } ;
typedef  TYPE_5__ ngx_event_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_16__ {TYPE_5__* read; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int NGX_HTTP_LUA_SOCKET_FT_TIMEOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_READ_EVENT ; 
 int NGX_USE_LEVEL_EVENT ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ngx_event_flags ; 
 int /*<<< orphan*/  ngx_http_block_reading ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  ngx_http_lua_rd_check_broken_connection ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC11(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L)
{
    int                          n;
    ngx_int_t                    rc;
    ngx_http_lua_ctx_t          *ctx;
    ngx_event_t                 *ev;

    ngx_http_lua_loc_conf_t             *llcf;

    FUNC10(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket receive return value handler");

    ctx = FUNC6(r, ngx_http_lua_module);

#if 1
    if (u->raw_downstream || u->body_downstream) {
        llcf = FUNC7(r, ngx_http_lua_module);

        if (llcf->check_client_abort) {

            r->read_event_handler = ngx_http_lua_rd_check_broken_connection;

            ev = r->connection->read;

            FUNC0("rev active: %d", ev->active);

            if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && !ev->active) {
                if (FUNC5(ev, NGX_READ_EVENT, 0) != NGX_OK) {
                    FUNC2(L);
                    FUNC1(L, "failed to add event");
                    return 2;
                }
            }

        } else {
            /* llcf->check_client_abort == 0 */
            r->read_event_handler = ngx_http_block_reading;
        }
    }
#endif

    if (u->ft_type) {

        if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_TIMEOUT) {
            u->no_close = 1;
        }

        FUNC0("u->bufs_in: %p", u->bufs_in);

        if (u->bufs_in) {
            rc = FUNC8(r, ctx, u, L);
            if (rc == NGX_ERROR) {
                FUNC2(L);
                FUNC1(L, "no memory");
                return 2;
            }

            (void) FUNC9(r, u, L);

            FUNC3(L, -3);
            FUNC4(L, -4);
            return 3;
        }

        n = FUNC9(r, u, L);
        FUNC1(L, "");
        return n + 1;
    }

    rc = FUNC8(r, ctx, u, L);
    if (rc == NGX_ERROR) {
        FUNC2(L);
        FUNC1(L, "no memory");
        return 2;
    }

    return 1;
}