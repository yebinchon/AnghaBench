#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_2__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_20__ {size_t rest; size_t length; int /*<<< orphan*/  input_filter; TYPE_3__* request; scalar_t__ eof; scalar_t__ ft_type; TYPE_1__ peer; scalar_t__ read_closed; } ;
typedef  TYPE_4__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_21__ {scalar_t__ log_socket_errors; } ;
typedef  TYPE_5__ ngx_http_lua_loc_conf_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Integer ;
struct TYPE_18__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  SOCKET_CTX_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_socket_read_any ; 
 int FUNC14 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_4__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC17(lua_State *L)
{
    int                                  n;
    lua_Integer                          bytes;
    ngx_http_request_t                  *r;
    ngx_http_lua_loc_conf_t             *llcf;
    ngx_http_lua_socket_tcp_upstream_t  *u;

    n = FUNC3(L);
    if (n != 2) {
        return FUNC2(L, "expecting 2 arguments "
                          "(including the object), but got %d", n);
    }

    r = FUNC11(L);
    if (r == NULL) {
        return FUNC2(L, "no request found");
    }

    FUNC1(L, 1, LUA_TTABLE);

    FUNC7(L, 1, SOCKET_CTX_INDEX);
    u = FUNC9(L, -1);

    if (u == NULL || u->peer.connection == NULL || u->read_closed) {

        llcf = FUNC10(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            FUNC16(NGX_LOG_ERR, r->connection->log, 0,
                          "attempt to receive data on a closed socket: u:%p, "
                          "c:%p, ft:%d eof:%d",
                          u, u ? u->peer.connection : NULL,
                          u ? (int) u->ft_type : 0, u ? (int) u->eof : 0);
        }

        FUNC6(L);
        FUNC5(L, "closed");
        return 2;
    }

    if (u->request != r) {
        return FUNC2(L, "bad request");
    }

    FUNC12(r, u, L);
    FUNC13(r, u, L);

    if (!FUNC4(L, 2)) {
        return FUNC0(L, 2, "bad max argument");
    }

    bytes = FUNC8(L, 2);
    if (bytes <= 0) {
        return FUNC0(L, 2, "bad max argument");
    }

    u->input_filter = ngx_http_lua_socket_read_any;
    u->rest = (size_t) bytes;
    u->length = u->rest;

    FUNC15(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket calling receiveany() method to read at "
                   "most %uz bytes", u->rest);

    return FUNC14(r, u, L);
}