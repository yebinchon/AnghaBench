#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ ngx_http_lua_socket_pool_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_pool_key ; 

void
FUNC9(lua_State *L)
{
    ngx_http_lua_socket_pool_t          *spool;

    FUNC2(L, FUNC6(
                          socket_pool_key));
    FUNC4(L, LUA_REGISTRYINDEX); /* table */

    FUNC3(L);  /* first key */
    while (FUNC0(L, -2) != 0) {
        /* tb key val */
        spool = FUNC5(L, -1);

        if (spool != NULL) {
            FUNC8(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                           "lua tcp socket keepalive: free connection pool %p "
                           "for \"%s\"", spool, spool->key);

            FUNC7(spool);
        }

        FUNC1(L, 1);
    }

    FUNC1(L, 1);
}