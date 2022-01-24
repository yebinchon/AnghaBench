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
struct TYPE_9__ {scalar_t__ ctx_ref; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_ctx_tables_key ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int
FUNC10(lua_State *L, ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx, int index)
{
    if (index < 0) {
        index = FUNC3(L) + index + 1;
    }

    if (ctx->ctx_ref == LUA_NOREF) {
        FUNC9(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua create ngx.ctx table for the current request");

        FUNC5(L, ngx_http_lua_ctx_tables_key);
        FUNC7(L, LUA_REGISTRYINDEX);
        FUNC6(L, index);
        ctx->ctx_ref = FUNC1(L, -2);
        FUNC4(L, 1);

        if (FUNC8(r, ctx->ctx_ref) != NGX_OK) {
            return FUNC0(L, "no memory");
        }

        return 0;
    }

    FUNC9(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua fetching existing ngx.ctx table for the current "
                   "request");

    FUNC5(L, ngx_http_lua_ctx_tables_key);
    FUNC7(L, LUA_REGISTRYINDEX);
    FUNC2(L, -1, ctx->ctx_ref);
    FUNC6(L, index);
    ctx->ctx_ref = FUNC1(L, -2);
    FUNC4(L, 1);

    return 0;
}