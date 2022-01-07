
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_4__ {int context; } ;
typedef TYPE_1__ ngx_http_lua_ctx_t ;
typedef int lua_State ;


 int NGX_HTTP_LUA_CONTEXT_BODY_FILTER ;
 int NGX_HTTP_LUA_CONTEXT_SET ;
 int luaL_error (int *,char*) ;
 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_body_filter_param_get (int *,int *) ;
 int ngx_http_lua_check_context (int *,TYPE_1__*,int) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_setby_param_get (int *,int *) ;

__attribute__((used)) static int
ngx_http_lua_param_get(lua_State *L)
{
    ngx_http_lua_ctx_t *ctx;
    ngx_http_request_t *r;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return 0;
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "ctx not found");
    }

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_SET
                               | NGX_HTTP_LUA_CONTEXT_BODY_FILTER);

    if (ctx->context & (NGX_HTTP_LUA_CONTEXT_SET)) {
        return ngx_http_lua_setby_param_get(L, r);
    }



    return ngx_http_lua_body_filter_param_get(L, r);
}
