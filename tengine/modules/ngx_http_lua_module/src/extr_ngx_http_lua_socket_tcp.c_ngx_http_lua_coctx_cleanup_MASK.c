#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * request; } ;
typedef  TYPE_1__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef  TYPE_2__ ngx_http_lua_co_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(void *data)
{
    ngx_http_lua_socket_tcp_upstream_t      *u;
    ngx_http_lua_co_ctx_t                   *coctx = data;

    FUNC0("running coctx cleanup");

    u = coctx->data;
    if (u == NULL) {
        return;
    }

    if (u->request == NULL) {
        return;
    }

    FUNC1(u->request, u);
}