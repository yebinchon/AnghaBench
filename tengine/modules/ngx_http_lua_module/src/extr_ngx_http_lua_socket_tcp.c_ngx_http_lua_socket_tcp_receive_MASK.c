#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_20__ {char* data; int len; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_21__ {TYPE_2__* connection; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_18__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_22__ {size_t length; size_t rest; void* input_filter; int /*<<< orphan*/  read_timeout; TYPE_4__* request; scalar_t__ eof; scalar_t__ ft_type; TYPE_1__ peer; scalar_t__ read_closed; } ;
typedef  TYPE_5__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_23__ {scalar_t__ log_socket_errors; } ;
typedef  TYPE_6__ ngx_http_lua_loc_conf_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Integer ;
struct TYPE_19__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  SOCKET_CTX_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 TYPE_6__* FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 void* ngx_http_lua_socket_read_all ; 
 void* ngx_http_lua_socket_read_chunk ; 
 void* ngx_http_lua_socket_read_line ; 
 int FUNC17 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_5__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC21(lua_State *L)
{
    ngx_http_request_t                  *r;
    ngx_http_lua_socket_tcp_upstream_t  *u;
    int                                  n;
    ngx_str_t                            pat;
    lua_Integer                          bytes;
    char                                *p;
    int                                  typ;
    ngx_http_lua_loc_conf_t             *llcf;

    n = FUNC4(L);
    if (n != 1 && n != 2) {
        return FUNC3(L, "expecting 1 or 2 arguments "
                          "(including the object), but got %d", n);
    }

    r = FUNC14(L);
    if (r == NULL) {
        return FUNC3(L, "no request found");
    }

    FUNC18(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket calling receive() method");

    FUNC2(L, 1, LUA_TTABLE);

    FUNC9(L, 1, SOCKET_CTX_INDEX);
    u = FUNC11(L, -1);

    if (u == NULL || u->peer.connection == NULL || u->read_closed) {

        llcf = FUNC13(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            FUNC20(NGX_LOG_ERR, r->connection->log, 0,
                          "attempt to receive data on a closed socket: u:%p, "
                          "c:%p, ft:%d eof:%d",
                          u, u ? u->peer.connection : NULL,
                          u ? (int) u->ft_type : 0, u ? (int) u->eof : 0);
        }

        FUNC8(L);
        FUNC7(L, "closed");
        return 2;
    }

    if (u->request != r) {
        return FUNC3(L, "bad request");
    }

    FUNC15(r, u, L);
    FUNC16(r, u, L);

    FUNC19(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket read timeout: %M", u->read_timeout);

    if (n > 1) {
        if (FUNC5(L, 2)) {
            typ = LUA_TNUMBER;

        } else {
            typ = FUNC12(L, 2);
        }

        switch (typ) {
        case LUA_TSTRING:
            pat.data = (u_char *) FUNC1(L, 2, &pat.len);
            if (pat.len != 2 || pat.data[0] != '*') {
                p = (char *) FUNC6(L, "bad pattern argument: %s",
                                             (char *) pat.data);

                return FUNC0(L, 2, p);
            }

            switch (pat.data[1]) {
            case 'l':
                u->input_filter = ngx_http_lua_socket_read_line;
                break;

            case 'a':
                u->input_filter = ngx_http_lua_socket_read_all;
                break;

            default:
                return FUNC0(L, 2, "bad pattern argument");
                break;
            }

            u->length = 0;
            u->rest = 0;

            break;

        case LUA_TNUMBER:
            bytes = FUNC10(L, 2);
            if (bytes < 0) {
                return FUNC0(L, 2, "bad pattern argument");
            }

#if 1
            if (bytes == 0) {
                FUNC7(L, "");
                return 1;
            }
#endif

            u->input_filter = ngx_http_lua_socket_read_chunk;
            u->length = (size_t) bytes;
            u->rest = u->length;

            break;

        default:
            return FUNC0(L, 2, "bad pattern argument");
            break;
        }

    } else {
        u->input_filter = ngx_http_lua_socket_read_line;
        u->length = 0;
        u->rest = 0;
    }

    return FUNC17(r, u, L);
}