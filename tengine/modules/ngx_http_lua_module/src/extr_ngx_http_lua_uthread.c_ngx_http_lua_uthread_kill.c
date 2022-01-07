
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_10__ {int uthreads; TYPE_2__* cur_co_ctx; } ;
typedef TYPE_1__ ngx_http_lua_ctx_t ;
struct TYPE_11__ {scalar_t__ pending_subreqs; int co_status; struct TYPE_11__* parent_co_ctx; int is_uthread; } ;
typedef TYPE_2__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;


 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ;
 int NGX_HTTP_LUA_CONTEXT_TIMER ;


 int luaL_argcheck (int *,int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int * lua_tothread (int *,int) ;
 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_check_context (int *,TYPE_1__*,int) ;
 int ngx_http_lua_cleanup_pending_operation (TYPE_2__*) ;
 int ngx_http_lua_del_thread (int *,int *,TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* ngx_http_lua_get_co_ctx (int *,TYPE_1__*) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;

__attribute__((used)) static int
ngx_http_lua_uthread_kill(lua_State *L)
{
    lua_State *sub_co;
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx, *sub_coctx;

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
                               | NGX_HTTP_LUA_CONTEXT_SSL_CERT);

    coctx = ctx->cur_co_ctx;

    sub_co = lua_tothread(L, 1);
    luaL_argcheck(L, sub_co, 1, "lua thread expected");

    sub_coctx = ngx_http_lua_get_co_ctx(sub_co, ctx);

    if (sub_coctx == ((void*)0)) {
        return luaL_error(L, "no co ctx found");
    }

    if (!sub_coctx->is_uthread) {
        lua_pushnil(L);
        lua_pushliteral(L, "not user thread");
        return 2;
    }

    if (sub_coctx->parent_co_ctx != coctx) {
        lua_pushnil(L);
        lua_pushliteral(L, "killer not parent");
        return 2;
    }

    if (sub_coctx->pending_subreqs > 0) {
        lua_pushnil(L);
        lua_pushliteral(L, "pending subrequests");
        return 2;
    }

    switch (sub_coctx->co_status) {
    case 128:
        ngx_http_lua_del_thread(r, L, ctx, sub_coctx);
        ctx->uthreads--;

        lua_pushnil(L);
        lua_pushliteral(L, "already terminated");
        return 2;

    case 129:
        lua_pushnil(L);
        lua_pushliteral(L, "already waited or killed");
        return 2;

    default:
        ngx_http_lua_cleanup_pending_operation(sub_coctx);
        ngx_http_lua_del_thread(r, L, ctx, sub_coctx);
        ctx->uthreads--;

        lua_pushinteger(L, 1);
        return 1;
    }


}
