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
struct TYPE_4__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_5__ {int /*<<< orphan*/  reused; scalar_t__ write_closed; scalar_t__ read_closed; TYPE_1__ peer; } ;
typedef  TYPE_2__ ngx_http_lua_socket_tcp_upstream_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  SOCKET_CTX_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC8(lua_State *L)
{
    ngx_http_lua_socket_tcp_upstream_t    *u;

    if (FUNC2(L) != 1) {
        return FUNC1(L, "expecting 1 argument "
                          "(including the object), but got %d", FUNC2(L));
    }

    FUNC0(L, 1, LUA_TTABLE);

    FUNC6(L, 1, SOCKET_CTX_INDEX);
    u = FUNC7(L, -1);

    if (u == NULL
        || u->peer.connection == NULL
        || (u->read_closed && u->write_closed))
    {
        FUNC5(L);
        FUNC4(L, "closed");
        return 2;
    }

    FUNC3(L, u->reused);
    return 1;
}