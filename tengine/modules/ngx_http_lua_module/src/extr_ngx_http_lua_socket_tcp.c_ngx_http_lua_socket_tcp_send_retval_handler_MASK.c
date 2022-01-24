#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {int /*<<< orphan*/  request_len; scalar_t__ ft_type; } ;
typedef  TYPE_3__ ngx_http_lua_socket_tcp_upstream_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_8__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L)
{
    FUNC2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket send return value handler");

    if (u->ft_type) {
        return FUNC1(r, u, L);
    }

    FUNC0(L, u->request_len);
    return 1;
}