#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;
struct TYPE_16__ {size_t len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_17__ {TYPE_1__* connection; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_15__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_18__ {int ft_type; int /*<<< orphan*/  socket_errno; TYPE_2__ udp_connection; scalar_t__ waiting; TYPE_4__* request; } ;
typedef  TYPE_5__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_19__ {scalar_t__ log_socket_errors; } ;
typedef  TYPE_6__ ngx_http_lua_loc_conf_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
#define  LUA_TBOOLEAN 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  SOCKET_CTX_INDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int,size_t*) ; 
 TYPE_5__* FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 TYPE_6__* FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 size_t FUNC18 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int FUNC21 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  ngx_socket_errno ; 

__attribute__((used)) static int
FUNC25(lua_State *L)
{
    ssize_t                              n;
    ngx_http_request_t                  *r;
    u_char                              *p;
    size_t                               len;
    ngx_http_lua_socket_udp_upstream_t  *u;
    int                                  type;
    const char                          *msg;
    ngx_str_t                            query;
    ngx_http_lua_loc_conf_t             *llcf;

    if (FUNC4(L) != 2) {
        return FUNC3(L, "expecting 2 arguments (including the object), "
                          "but got %d", FUNC4(L));
    }

    r = FUNC20(L);
    if (r == NULL) {
        return FUNC3(L, "request object not found");
    }

    FUNC2(L, 1, LUA_TTABLE);

    FUNC11(L, 1, SOCKET_CTX_INDEX);
    u = FUNC14(L, -1);
    FUNC6(L, 1);

    if (u == NULL || u->udp_connection.connection == NULL) {
        llcf = FUNC17(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            FUNC22(NGX_LOG_ERR, r->connection->log, 0,
                          "attempt to send data on a closed socket: u:%p, c:%p",
                          u, u ? u->udp_connection.connection : NULL);
        }

        FUNC10(L);
        FUNC9(L, "closed");
        return 2;
    }

    if (u->request != r) {
        return FUNC3(L, "bad request");
    }

    if (u->ft_type) {
        u->ft_type = 0;
    }

    if (u->waiting) {
        FUNC10(L);
        FUNC9(L, "socket busy");
        return 2;
    }

    type = FUNC15(L, 2);
    switch (type) {
        case LUA_TNUMBER:
        case LUA_TSTRING:
            FUNC13(L, 2, &len);
            break;

        case LUA_TTABLE:
            len = FUNC18(L, 2, 2, 1 /* strict */);
            break;

        case LUA_TNIL:
            len = sizeof("nil") - 1;
            break;

        case LUA_TBOOLEAN:
            if (FUNC12(L, 2)) {
                len = sizeof("true") - 1;

            } else {
                len = sizeof("false") - 1;
            }

            break;

        default:
            msg = FUNC7(L, "string, number, boolean, nil, "
                                  "or array table expected, got %s",
                                  FUNC16(L, type));

            return FUNC1(L, 2, msg);
    }

    query.data = FUNC5(L, len);
    query.len = len;

    switch (type) {
        case LUA_TNUMBER:
        case LUA_TSTRING:
            p = (u_char *) FUNC13(L, 2, &len);
            FUNC23(query.data, (u_char *) p, len);
            break;

        case LUA_TTABLE:
            (void) FUNC19(L, 2, query.data);
            break;

        case LUA_TNIL:
            p = query.data;
            *p++ = 'n';
            *p++ = 'i';
            *p++ = 'l';
            break;

        case LUA_TBOOLEAN:
            p = query.data;

            if (FUNC12(L, 2)) {
                *p++ = 't';
                *p++ = 'r';
                *p++ = 'u';
                *p++ = 'e';

            } else {
                *p++ = 'f';
                *p++ = 'a';
                *p++ = 'l';
                *p++ = 's';
                *p++ = 'e';
            }

            break;

        default:
            return FUNC3(L, "impossible to reach here");
    }

    u->ft_type = 0;

    /* mimic ngx_http_upstream_init_request here */

#if 1
    u->waiting = 0;
#endif

    FUNC0("sending query %.*s", (int) query.len, query.data);

    n = FUNC24(u->udp_connection.connection, query.data, query.len);

    FUNC0("ngx_send returns %d (query len %d)", (int) n, (int) query.len);

    if (n == NGX_ERROR || n == NGX_AGAIN) {
        u->socket_errno = ngx_socket_errno;

        return FUNC21(r, u, L);
    }

    if (n != (ssize_t) query.len) {
        FUNC0("not the while query was sent");

        u->ft_type |= NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE;
        return FUNC21(r, u, L);
    }

    FUNC0("n == len");

    FUNC8(L, 1);
    return 1;
}