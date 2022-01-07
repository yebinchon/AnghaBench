
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_http_request_t ;
typedef int ngx_http_lua_ctx_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int NGX_HTTP_LUA_CONTEXT_ACCESS ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_HTTP_LUA_CONTEXT_REWRITE ;
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ;
 int NGX_HTTP_LUA_CONTEXT_TIMER ;
 int dd (char*,scalar_t__) ;
 int luaL_error (int *,char*,...) ;
 int lua_createtable (int *,int,int) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_rawget (int *,int ) ;
 int lua_setmetatable (int *,int) ;
 int * ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_lua_check_context (int *,int *,int) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_module ;
 int socket_udp_metatable_key ;

__attribute__((used)) static int
ngx_http_lua_socket_udp(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;

    if (lua_gettop(L) != 0) {
        return luaL_error(L, "expecting zero arguments, but got %d",
                          lua_gettop(L));
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no ctx found");
    }

    ngx_http_lua_check_context(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT
                               | NGX_HTTP_LUA_CONTEXT_TIMER
                               | NGX_HTTP_LUA_CONTEXT_SSL_CERT);

    lua_createtable(L, 3 , 1 );
    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          socket_udp_metatable_key));
    lua_rawget(L, LUA_REGISTRYINDEX);
    lua_setmetatable(L, -2);

    dd("top: %d", lua_gettop(L));

    return 1;
}
