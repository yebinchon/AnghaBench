#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_http_lua_ctx_t ;
struct TYPE_9__ {scalar_t__ co_ref; int /*<<< orphan*/  co_status; int /*<<< orphan*/  co; } ;
typedef  TYPE_3__ ngx_http_lua_co_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CO_DEAD ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  coroutines_key ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void
FUNC7(ngx_http_request_t *r, lua_State *L,
    ngx_http_lua_ctx_t *ctx, ngx_http_lua_co_ctx_t *coctx)
{
    if (coctx->co_ref == LUA_NOREF) {
        return;
    }

    FUNC6(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua deleting light thread");

    FUNC2(L, FUNC4(
                          coroutines_key));
    FUNC3(L, LUA_REGISTRYINDEX);

    FUNC5(r, coctx->co, ctx);

    FUNC0(L, -1, coctx->co_ref);
    coctx->co_ref = LUA_NOREF;
    coctx->co_status = NGX_HTTP_LUA_CO_DEAD;

    FUNC1(L, 1);
}