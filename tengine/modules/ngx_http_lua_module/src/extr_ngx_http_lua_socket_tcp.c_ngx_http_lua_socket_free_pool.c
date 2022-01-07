
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_log_t ;
struct TYPE_3__ {scalar_t__ key; int * lua_vm; } ;
typedef TYPE_1__ ngx_http_lua_socket_pool_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int NGX_LOG_DEBUG_HTTP ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawget (int *,int ) ;
 int lua_rawset (int *,int) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_log_debug1 (int ,int *,int ,char*,scalar_t__) ;
 int socket_pool_key ;

__attribute__((used)) static void
ngx_http_lua_socket_free_pool(ngx_log_t *log, ngx_http_lua_socket_pool_t *spool)
{
    lua_State *L;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, log, 0,
                   "lua tcp socket keepalive: free connection pool for \"%s\"",
                   spool->key);

    L = spool->lua_vm;

    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(socket_pool_key));
    lua_rawget(L, LUA_REGISTRYINDEX);
    lua_pushstring(L, (char *) spool->key);
    lua_pushnil(L);
    lua_rawset(L, -3);
    lua_pop(L, 1);
}
