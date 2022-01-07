
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_7__ {int co_op; TYPE_3__* cur_co_ctx; } ;
typedef TYPE_2__ ngx_http_lua_ctx_t ;
struct TYPE_8__ {TYPE_1__* parent_co_ctx; int is_uthread; int co_status; } ;
typedef TYPE_3__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;
struct TYPE_6__ {int * co; int co_status; } ;


 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ;
 int NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH ;
 int NGX_HTTP_LUA_CONTEXT_TIMER ;
 int NGX_HTTP_LUA_CO_RUNNING ;
 int NGX_HTTP_LUA_CO_SUSPENDED ;
 int NGX_HTTP_LUA_USER_CORO_YIELD ;
 int dd (char*) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_yield (int *,int ) ;
 TYPE_2__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_check_context (int *,TYPE_2__*,int) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_probe_user_coroutine_yield (int *,int *,int *) ;

__attribute__((used)) static int
ngx_http_lua_coroutine_yield(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no request ctx found");
    }

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT
                               | NGX_HTTP_LUA_CONTEXT_TIMER
                               | NGX_HTTP_LUA_CONTEXT_SSL_CERT
                               | NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH);

    coctx = ctx->cur_co_ctx;

    coctx->co_status = NGX_HTTP_LUA_CO_SUSPENDED;

    ctx->co_op = NGX_HTTP_LUA_USER_CORO_YIELD;

    if (!coctx->is_uthread && coctx->parent_co_ctx) {
        dd("set coroutine to running");
        coctx->parent_co_ctx->co_status = NGX_HTTP_LUA_CO_RUNNING;

        ngx_http_lua_probe_user_coroutine_yield(r, coctx->parent_co_ctx->co, L);

    } else {
        ngx_http_lua_probe_user_coroutine_yield(r, ((void*)0), L);
    }



    return lua_yield(L, lua_gettop(L));
}
