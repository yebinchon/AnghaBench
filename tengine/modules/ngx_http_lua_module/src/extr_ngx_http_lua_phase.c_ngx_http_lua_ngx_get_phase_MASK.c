#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_3__ {int context; } ;
typedef  TYPE_1__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  NGX_HTTP_LUA_CONTEXT_ACCESS 140 
#define  NGX_HTTP_LUA_CONTEXT_BALANCER 139 
#define  NGX_HTTP_LUA_CONTEXT_BODY_FILTER 138 
#define  NGX_HTTP_LUA_CONTEXT_CONTENT 137 
#define  NGX_HTTP_LUA_CONTEXT_HEADER_FILTER 136 
#define  NGX_HTTP_LUA_CONTEXT_INIT_WORKER 135 
#define  NGX_HTTP_LUA_CONTEXT_LOG 134 
#define  NGX_HTTP_LUA_CONTEXT_REWRITE 133 
#define  NGX_HTTP_LUA_CONTEXT_SET 132 
#define  NGX_HTTP_LUA_CONTEXT_SSL_CERT 131 
#define  NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH 130 
#define  NGX_HTTP_LUA_CONTEXT_SSL_SESS_STORE 129 
#define  NGX_HTTP_LUA_CONTEXT_TIMER 128 
 int FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

__attribute__((used)) static int
FUNC4(lua_State *L)
{
    ngx_http_request_t          *r;
    ngx_http_lua_ctx_t          *ctx;

    r = FUNC3(L);

    /* If we have no request object, assume we are called from the "init"
     * phase. */

    if (r == NULL) {
        FUNC1(L, "init");
        return 1;
    }

    ctx = FUNC2(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC0(L, "no request ctx found");
    }

    switch (ctx->context) {
    case NGX_HTTP_LUA_CONTEXT_INIT_WORKER:
        FUNC1(L, "init_worker");
        break;

    case NGX_HTTP_LUA_CONTEXT_SET:
        FUNC1(L, "set");
        break;

    case NGX_HTTP_LUA_CONTEXT_REWRITE:
        FUNC1(L, "rewrite");
        break;

    case NGX_HTTP_LUA_CONTEXT_ACCESS:
        FUNC1(L, "access");
        break;

    case NGX_HTTP_LUA_CONTEXT_CONTENT:
        FUNC1(L, "content");
        break;

    case NGX_HTTP_LUA_CONTEXT_LOG:
        FUNC1(L, "log");
        break;

    case NGX_HTTP_LUA_CONTEXT_HEADER_FILTER:
        FUNC1(L, "header_filter");
        break;

    case NGX_HTTP_LUA_CONTEXT_BODY_FILTER:
        FUNC1(L, "body_filter");
        break;

    case NGX_HTTP_LUA_CONTEXT_TIMER:
        FUNC1(L, "timer");
        break;

    case NGX_HTTP_LUA_CONTEXT_BALANCER:
        FUNC1(L, "balancer");
        break;

    case NGX_HTTP_LUA_CONTEXT_SSL_CERT:
        FUNC1(L, "ssl_cert");
        break;

    case NGX_HTTP_LUA_CONTEXT_SSL_SESS_STORE:
        FUNC1(L, "ssl_session_store");
        break;

    case NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH:
        FUNC1(L, "ssl_session_fetch");
        break;

    default:
        return FUNC0(L, "unknown phase: %#x", (int) ctx->context);
    }

    return 1;
}