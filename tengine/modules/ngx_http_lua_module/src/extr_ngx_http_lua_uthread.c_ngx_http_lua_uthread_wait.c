
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_9__ {int uthreads; TYPE_2__* cur_co_ctx; } ;
typedef TYPE_1__ ngx_http_lua_ctx_t ;
struct TYPE_10__ {int co_status; int waited_by_parent; int * co; struct TYPE_10__* parent_co_ctx; int is_uthread; } ;
typedef TYPE_2__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;


 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ;
 int NGX_HTTP_LUA_CONTEXT_TIMER ;


 int dd (char*,...) ;
 int luaL_argcheck (int *,int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int luaL_typename (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_tostring (int *,int) ;
 int * lua_tothread (int *,int) ;
 int lua_xmove (int *,int *,int) ;
 int lua_yield (int *,int ) ;
 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_check_context (int *,TYPE_1__*,int) ;
 int ngx_http_lua_del_thread (int *,int *,TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* ngx_http_lua_get_co_ctx (int *,TYPE_1__*) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_probe_info (char*) ;
 int ngx_http_lua_probe_user_thread_wait (int *,int *) ;

__attribute__((used)) static int
ngx_http_lua_uthread_wait(lua_State *L)
{
    int i, nargs, nrets;
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

    nargs = lua_gettop(L);

    for (i = 1; i <= nargs; i++) {
        sub_co = lua_tothread(L, i);

        luaL_argcheck(L, sub_co, i, "lua thread expected");

        sub_coctx = ngx_http_lua_get_co_ctx(sub_co, ctx);
        if (sub_coctx == ((void*)0)) {
            return luaL_error(L, "no co ctx found");
        }

        if (!sub_coctx->is_uthread) {
            return luaL_error(L, "attempt to wait on a coroutine that is "
                              "not a user thread");
        }

        if (sub_coctx->parent_co_ctx != coctx) {
            return luaL_error(L, "only the parent coroutine can wait on the "
                              "thread");
        }

        switch (sub_coctx->co_status) {
        case 128:

            ngx_http_lua_probe_info("found zombie child");

            nrets = lua_gettop(sub_coctx->co);

            dd("child retval count: %d, %s: %s", (int) nrets,
               luaL_typename(sub_coctx->co, -1),
               lua_tostring(sub_coctx->co, -1));

            if (nrets) {
                lua_xmove(sub_coctx->co, L, nrets);
            }


            ngx_http_lua_del_thread(r, L, ctx, sub_coctx);
            ctx->uthreads--;


            return nrets;

        case 129:
            dd("uthread already waited: %p (parent %p)", sub_coctx,
               coctx);

            if (i < nargs) {

                continue;
            }


            lua_pushnil(L);
            lua_pushliteral(L, "already waited or killed");
            return 2;

        default:
            dd("uthread %p still alive, status: %d, parent %p", sub_coctx,
               sub_coctx->co_status, coctx);
            break;
        }

        ngx_http_lua_probe_user_thread_wait(L, sub_coctx->co);
        sub_coctx->waited_by_parent = 1;
    }

    return lua_yield(L, 0);
}
