#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cleanup; } ;
typedef  TYPE_1__ ngx_http_lua_socket_udp_upstream_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(lua_State *L)
{
    ngx_http_lua_socket_udp_upstream_t      *u;

    FUNC0("upstream destroy triggered by Lua GC");

    u = FUNC1(L, 1);
    if (u == NULL) {
        return 0;
    }

    if (u->cleanup) {
        FUNC2(u); /* it will clear u->cleanup */
    }

    return 0;
}