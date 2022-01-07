
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int NGX_LOG_DEBUG_HTTP ;
 int code_cache_key ;
 int coroutines_key ;
 int lua_createtable (int *,int ,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushliteral (int *,int ) ;
 int lua_rawset (int *,int ) ;
 int ngx_http_lua_ctx_tables_key ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_log_debug0 (int ,int *,int ,char*) ;
 int regex_cache_key ;
 int socket_pool_key ;

__attribute__((used)) static void
ngx_http_lua_init_registry(lua_State *L, ngx_log_t *log)
{
    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, log, 0,
                   "lua initializing lua registry");



    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          coroutines_key));
    lua_createtable(L, 0, 32 );
    lua_rawset(L, LUA_REGISTRYINDEX);



    lua_pushliteral(L, ngx_http_lua_ctx_tables_key);
    lua_createtable(L, 0, 32 );
    lua_rawset(L, LUA_REGISTRYINDEX);


    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          socket_pool_key));
    lua_createtable(L, 0, 8 );
    lua_rawset(L, LUA_REGISTRYINDEX);
    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          code_cache_key));
    lua_createtable(L, 0, 8 );
    lua_rawset(L, LUA_REGISTRYINDEX);

}
