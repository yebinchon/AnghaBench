#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_7__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_8__ {int ft_type; scalar_t__ socket_errno; } ;
typedef  TYPE_3__ ngx_http_lua_socket_udp_upstream_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  errstr ;
struct TYPE_6__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int NGX_HTTP_LUA_SOCKET_FT_BUFTOOSMALL ; 
 int NGX_HTTP_LUA_SOCKET_FT_CLOSED ; 
 int NGX_HTTP_LUA_SOCKET_FT_NOMEM ; 
 int NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE ; 
 int NGX_HTTP_LUA_SOCKET_FT_RESOLVER ; 
 int NGX_HTTP_LUA_SOCKET_FT_TIMEOUT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int NGX_MAX_ERROR_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC7(ngx_http_request_t *r,
    ngx_http_lua_socket_udp_upstream_t *u, lua_State *L)
{
    u_char           errstr[NGX_MAX_ERROR_STR];
    u_char          *p;

    FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua udp socket error retval handler");

    if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_RESOLVER) {
        return 2;
    }

    FUNC2(L);

    if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE) {
        FUNC0(L, "partial write");

    } else if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_TIMEOUT) {
        FUNC0(L, "timeout");

    } else if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_CLOSED) {
        FUNC0(L, "closed");

    } else if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_BUFTOOSMALL) {
        FUNC0(L, "buffer too small");

    } else if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_NOMEM) {
        FUNC0(L, "no memory");

    } else {

        if (u->socket_errno) {
#if defined(nginx_version) && nginx_version >= 9000
            p = ngx_strerror(u->socket_errno, errstr, sizeof(errstr));
#else
            p = FUNC5(u->socket_errno, errstr, sizeof(errstr));
#endif
            /* for compatibility with LuaSocket */
            FUNC6(errstr, errstr, p - errstr);
            FUNC1(L, (char *) errstr, p - errstr);

        } else {
            FUNC0(L, "error");
        }
    }

    return 2;
}