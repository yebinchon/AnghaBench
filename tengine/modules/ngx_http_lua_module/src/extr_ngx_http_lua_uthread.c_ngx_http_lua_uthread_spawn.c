
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_8__ {TYPE_2__* cur_co_ctx; int co_op; int uthreads; } ;
typedef TYPE_1__ ngx_http_lua_ctx_t ;
struct TYPE_9__ {int is_uthread; int thread_spawn_yielded; int co; struct TYPE_9__* parent_co_ctx; int co_status; int co_ref; } ;
typedef TYPE_2__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int NGX_HTTP_LUA_CO_RUNNING ;
 int NGX_HTTP_LUA_USER_THREAD_RESUME ;
 scalar_t__ NGX_OK ;
 int coroutines_key ;
 int dd (char*,int ,int,int ) ;
 int luaL_error (int *,char*) ;
 int luaL_ref (int *,int) ;
 int luaL_typename (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int ) ;
 int lua_replace (int *,int) ;
 int lua_xmove (int *,int ,int) ;
 int lua_yield (int *,int) ;
 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_coroutine_create_helper (int *,int *,TYPE_1__*,TYPE_2__**) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_module ;
 scalar_t__ ngx_http_lua_post_thread (int *,TYPE_1__*,TYPE_2__*) ;
 int ngx_http_lua_probe_user_thread_spawn (int *,int *,int ) ;

__attribute__((used)) static int
ngx_http_lua_uthread_spawn(lua_State *L)
{
    int n;
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx = ((void*)0);

    n = lua_gettop(L);

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no request ctx found");
    }

    ngx_http_lua_coroutine_create_helper(L, r, ctx, &coctx);



    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          coroutines_key));
    lua_rawget(L, LUA_REGISTRYINDEX);
    lua_pushvalue(L, -2);
    coctx->co_ref = luaL_ref(L, -2);
    lua_pop(L, 1);

    if (n > 1) {
        lua_replace(L, 1);
        lua_xmove(L, coctx->co, n - 1);
    }

    coctx->is_uthread = 1;
    ctx->uthreads++;

    coctx->co_status = NGX_HTTP_LUA_CO_RUNNING;
    ctx->co_op = NGX_HTTP_LUA_USER_THREAD_RESUME;

    ctx->cur_co_ctx->thread_spawn_yielded = 1;

    if (ngx_http_lua_post_thread(r, ctx, ctx->cur_co_ctx) != NGX_OK) {
        return luaL_error(L, "no memory");
    }

    coctx->parent_co_ctx = ctx->cur_co_ctx;
    ctx->cur_co_ctx = coctx;

    ngx_http_lua_probe_user_thread_spawn(r, L, coctx->co);

    dd("yielding with arg %s, top=%d, index-1:%s", luaL_typename(L, -1),
       (int) lua_gettop(L), luaL_typename(L, 1));
    return lua_yield(L, 1);
}
