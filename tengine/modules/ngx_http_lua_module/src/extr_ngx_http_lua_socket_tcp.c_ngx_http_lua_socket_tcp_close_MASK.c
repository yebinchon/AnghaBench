#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_8__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_9__ {scalar_t__ body_downstream; scalar_t__ raw_downstream; int /*<<< orphan*/ * request; scalar_t__ write_closed; scalar_t__ read_closed; TYPE_1__ peer; } ;
typedef  TYPE_2__ ngx_http_lua_socket_tcp_upstream_t ;
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
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC14(lua_State *L)
{
    ngx_http_request_t                  *r;
    ngx_http_lua_socket_tcp_upstream_t  *u;

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

    if (u == NULL
        || u->peer.connection == NULL
        || (u->read_closed && u->write_closed))
    {
        FUNC6(L);
        FUNC5(L, "closed");
        return 2;
    }

    if (u->request != r) {
        return FUNC1(L, "bad request");
    }

    FUNC10(r, u, L);
    FUNC11(r, u, L);
    FUNC12(r, u, L);

    if (u->raw_downstream || u->body_downstream) {
        FUNC6(L);
        FUNC5(L, "attempt to close a request socket");
        return 2;
    }

    FUNC13(r, u);

    FUNC4(L, 1);
    return 1;
}