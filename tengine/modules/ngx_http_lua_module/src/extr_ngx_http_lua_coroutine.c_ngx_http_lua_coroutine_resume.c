
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_8__ {TYPE_2__* cur_co_ctx; int co_op; } ;
typedef TYPE_1__ ngx_http_lua_ctx_t ;
struct TYPE_9__ {size_t co_status; struct TYPE_9__* parent_co_ctx; } ;
typedef TYPE_2__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;
struct TYPE_10__ {int data; } ;


 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ;
 int NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH ;
 int NGX_HTTP_LUA_CONTEXT_TIMER ;
 size_t NGX_HTTP_LUA_CO_NORMAL ;
 size_t NGX_HTTP_LUA_CO_RUNNING ;
 size_t NGX_HTTP_LUA_CO_SUSPENDED ;
 int NGX_HTTP_LUA_USER_CORO_RESUME ;
 int dd (char*,...) ;
 int luaL_argcheck (int *,int *,int,char*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushfstring (int *,char*,int ) ;
 int * lua_tothread (int *,int) ;
 int lua_yield (int *,scalar_t__) ;
 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_check_context (int *,TYPE_1__*,int) ;
 TYPE_5__* ngx_http_lua_co_status_names ;
 TYPE_2__* ngx_http_lua_get_co_ctx (int *,TYPE_1__*) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_probe_user_coroutine_resume (int *,int *,int *) ;

__attribute__((used)) static int
ngx_http_lua_coroutine_resume(lua_State *L)
{
    lua_State *co;
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;
    ngx_http_lua_co_ctx_t *p_coctx;

    co = lua_tothread(L, 1);

    luaL_argcheck(L, co, 1, "coroutine expected");

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

    p_coctx = ctx->cur_co_ctx;
    if (p_coctx == ((void*)0)) {
        return luaL_error(L, "no parent co ctx found");
    }

    coctx = ngx_http_lua_get_co_ctx(co, ctx);
    if (coctx == ((void*)0)) {
        return luaL_error(L, "no co ctx found");
    }

    ngx_http_lua_probe_user_coroutine_resume(r, L, co);

    if (coctx->co_status != NGX_HTTP_LUA_CO_SUSPENDED) {
        dd("coroutine resume: %d", coctx->co_status);

        lua_pushboolean(L, 0);
        lua_pushfstring(L, "cannot resume %s coroutine",
                        ngx_http_lua_co_status_names[coctx->co_status].data);
        return 2;
    }

    p_coctx->co_status = NGX_HTTP_LUA_CO_NORMAL;

    coctx->parent_co_ctx = p_coctx;

    dd("set coroutine to running");
    coctx->co_status = NGX_HTTP_LUA_CO_RUNNING;

    ctx->co_op = NGX_HTTP_LUA_USER_CORO_RESUME;
    ctx->cur_co_ctx = coctx;



    return lua_yield(L, lua_gettop(L) - 1);
}
