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
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_12__ {scalar_t__ eof; scalar_t__ acquired_raw_req_socket; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int NGX_HTTP_LUA_CONTEXT_ACCESS ; 
 int NGX_HTTP_LUA_CONTEXT_CONTENT ; 
 int NGX_HTTP_LUA_CONTEXT_REWRITE ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC11(lua_State *L)
{
    ngx_http_request_t      *r;
    ngx_http_lua_ctx_t      *ctx;
    ngx_int_t                rc;

    r = FUNC8(L);
    if (r == NULL) {
        return FUNC1(L, "no request object found");
    }

    if (FUNC2(L) != 0) {
        return FUNC1(L, "no argument is expected");
    }

    ctx = FUNC6(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC1(L, "no ctx found");
    }

    if (ctx->acquired_raw_req_socket) {
        FUNC5(L);
        FUNC4(L, "raw request socket acquired");
        return 2;
    }

    if (ctx->eof) {
        FUNC5(L);
        FUNC4(L, "seen eof");
        return 2;
    }

    FUNC7(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT);

    FUNC10(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua send eof");

    rc = FUNC9(r, ctx, NULL /* indicate last_buf */);

    FUNC0("send chain: %d", (int) rc);

    if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        FUNC5(L);
        FUNC4(L, "nginx output filter error");
        return 2;
    }

    FUNC3(L, 1);
    return 1;
}