
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_http_lua_socket_pool_t ;
typedef int lua_State ;


 int * lua_touserdata (int *,int) ;
 int ngx_http_lua_socket_shutdown_pool_helper (int *) ;

__attribute__((used)) static int
ngx_http_lua_socket_shutdown_pool(lua_State *L)
{
    ngx_http_lua_socket_pool_t *spool;

    spool = lua_touserdata(L, 1);

    if (spool != ((void*)0)) {
        ngx_http_lua_socket_shutdown_pool_helper(spool);
    }

    return 0;
}
