#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_11__ {TYPE_1__* connection; int /*<<< orphan*/  header_sent; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_12__ {int /*<<< orphan*/  header_sent; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int NGX_HTTP_LUA_CONTEXT_ACCESS ; 
 int NGX_HTTP_LUA_CONTEXT_CONTENT ; 
 int NGX_HTTP_LUA_CONTEXT_REWRITE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC9(lua_State *L)
{
    ngx_int_t                rc;
    ngx_http_request_t      *r;
    ngx_http_lua_ctx_t      *ctx;

    r = FUNC6(L);
    if (r == NULL) {
        return FUNC0(L, "no request found");
    }

    ctx = FUNC4(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC0(L, "no ctx found");
    }

    FUNC5(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT);

    if (!r->header_sent && !ctx->header_sent) {
        FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua send headers");

        rc = FUNC7(r, ctx);
        if (rc == NGX_ERROR || rc > NGX_OK) {
            FUNC3(L);
            FUNC2(L, "nginx output filter error");
            return 2;
        }
    }

    FUNC1(L, 1);
    return 1;
}