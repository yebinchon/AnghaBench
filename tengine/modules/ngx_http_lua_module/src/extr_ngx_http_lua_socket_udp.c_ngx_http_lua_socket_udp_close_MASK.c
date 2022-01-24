#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_5__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_6__ {scalar_t__ waiting; int /*<<< orphan*/ * request; TYPE_1__ udp_connection; } ;
typedef  TYPE_2__ ngx_http_lua_socket_udp_upstream_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  SOCKET_CTX_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC11(lua_State *L)
{
    ngx_http_request_t                  *r;
    ngx_http_lua_socket_udp_upstream_t  *u;

    if (FUNC2(L) != 1) {
        return FUNC1(L, "expecting 1 argument "
                          "(including the object) but seen %d", FUNC2(L));
    }

    r = FUNC9(L);
    if (r == NULL) {
        return FUNC1(L, "no request found");
    }

    FUNC0(L, 1, LUA_TTABLE);

    FUNC7(L, 1, SOCKET_CTX_INDEX);
    u = FUNC8(L, -1);
    FUNC3(L, 1);

    if (u == NULL || u->udp_connection.connection == NULL) {
        FUNC6(L);
        FUNC5(L, "closed");
        return 2;
    }

    if (u->request != r) {
        return FUNC1(L, "bad request");
    }

    if (u->waiting) {
        FUNC6(L);
        FUNC5(L, "socket busy");
        return 2;
    }

    FUNC10(r, u);

    FUNC4(L, 1);
    return 1;
}