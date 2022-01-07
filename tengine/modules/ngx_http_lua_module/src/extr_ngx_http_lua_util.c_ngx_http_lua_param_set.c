
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_http_request_t ;
typedef int ngx_http_lua_ctx_t ;
typedef int lua_State ;


 int NGX_HTTP_LUA_CONTEXT_BODY_FILTER ;
 int luaL_error (int *,char*) ;
 int * ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_body_filter_param_set (int *,int *,int *) ;
 int ngx_http_lua_check_context (int *,int *,int ) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;

__attribute__((used)) static int
ngx_http_lua_param_set(lua_State *L)
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

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_BODY_FILTER);

    return ngx_http_lua_body_filter_param_set(L, r, ctx);
}
