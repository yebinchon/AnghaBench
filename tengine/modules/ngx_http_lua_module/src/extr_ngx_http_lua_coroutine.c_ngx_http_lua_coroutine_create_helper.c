
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_http_request_t ;
typedef int ngx_http_lua_ctx_t ;
struct TYPE_6__ {int co_top; int co_status; int * co; int co_ref; } ;
typedef TYPE_1__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;


 int LUA_NOREF ;
 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ;
 int NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH ;
 int NGX_HTTP_LUA_CONTEXT_TIMER ;
 int NGX_HTTP_LUA_CO_SUSPENDED ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_iscfunction (int *,int) ;
 scalar_t__ lua_isfunction (int *,int) ;
 int * lua_newthread (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_xmove (int *,int *,int) ;
 int ngx_http_lua_check_context (int *,int *,int) ;
 TYPE_1__* ngx_http_lua_create_co_ctx (int *,int *) ;
 TYPE_1__* ngx_http_lua_get_co_ctx (int *,int *) ;
 int ngx_http_lua_get_globals_table (int *) ;
 int * ngx_http_lua_get_lua_vm (int *,int *) ;
 int ngx_http_lua_probe_user_coroutine_create (int *,int *,int *) ;
 int ngx_http_lua_set_globals_table (int *) ;
 int ngx_http_lua_set_req (int *,int *) ;
 int ngx_memzero (TYPE_1__*,int) ;

int
ngx_http_lua_coroutine_create_helper(lua_State *L, ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx, ngx_http_lua_co_ctx_t **pcoctx)
{
    lua_State *vm;
    lua_State *co;
    ngx_http_lua_co_ctx_t *coctx;

    luaL_argcheck(L, lua_isfunction(L, 1) && !lua_iscfunction(L, 1), 1,
                  "Lua function expected");

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT
                               | NGX_HTTP_LUA_CONTEXT_TIMER
                               | NGX_HTTP_LUA_CONTEXT_SSL_CERT
                               | NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH);

    vm = ngx_http_lua_get_lua_vm(r, ctx);




    co = lua_newthread(vm);

    ngx_http_lua_probe_user_coroutine_create(r, L, co);

    coctx = ngx_http_lua_get_co_ctx(co, ctx);
    if (coctx == ((void*)0)) {
        coctx = ngx_http_lua_create_co_ctx(r, ctx);
        if (coctx == ((void*)0)) {
            return luaL_error(L, "no memory");
        }

    } else {
        ngx_memzero(coctx, sizeof(ngx_http_lua_co_ctx_t));
        coctx->co_ref = LUA_NOREF;
    }

    coctx->co = co;
    coctx->co_status = NGX_HTTP_LUA_CO_SUSPENDED;






    ngx_http_lua_get_globals_table(L);
    lua_xmove(L, co, 1);
    ngx_http_lua_set_globals_table(co);


    lua_xmove(vm, L, 1);

    lua_pushvalue(L, 1);
    lua_xmove(L, co, 1);

    if (pcoctx) {
        *pcoctx = coctx;
    }





    return 1;
}
