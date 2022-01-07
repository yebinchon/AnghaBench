
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_http_request_t ;
typedef int ngx_http_lua_ctx_t ;
struct TYPE_4__ {size_t co_status; } ;
typedef TYPE_1__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;
struct TYPE_5__ {int len; scalar_t__ data; } ;


 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ;
 int NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH ;
 int NGX_HTTP_LUA_CONTEXT_TIMER ;
 size_t NGX_HTTP_LUA_CO_DEAD ;
 int dd (char*,size_t) ;
 int luaL_argcheck (int *,int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_pushlstring (int *,char const*,int ) ;
 int * lua_tothread (int *,int) ;
 int * ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_check_context (int *,int *,int) ;
 TYPE_3__* ngx_http_lua_co_status_names ;
 TYPE_1__* ngx_http_lua_get_co_ctx (int *,int *) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;

__attribute__((used)) static int
ngx_http_lua_coroutine_status(lua_State *L)
{
    lua_State *co;
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;

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

    coctx = ngx_http_lua_get_co_ctx(co, ctx);
    if (coctx == ((void*)0)) {
        lua_pushlstring(L, (const char *)
                        ngx_http_lua_co_status_names[NGX_HTTP_LUA_CO_DEAD].data,
                        ngx_http_lua_co_status_names[NGX_HTTP_LUA_CO_DEAD].len);
        return 1;
    }

    dd("co status: %d", coctx->co_status);

    lua_pushlstring(L, (const char *)
                    ngx_http_lua_co_status_names[coctx->co_status].data,
                    ngx_http_lua_co_status_names[coctx->co_status].len);
    return 1;
}
