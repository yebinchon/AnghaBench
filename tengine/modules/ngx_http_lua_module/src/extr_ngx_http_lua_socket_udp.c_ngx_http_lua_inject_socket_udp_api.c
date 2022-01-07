
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int lua_createtable (int *,int ,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawset (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_socket_udp ;
 int ngx_http_lua_socket_udp_close ;
 int ngx_http_lua_socket_udp_receive ;
 int ngx_http_lua_socket_udp_send ;
 int ngx_http_lua_socket_udp_setpeername ;
 int ngx_http_lua_socket_udp_settimeout ;
 int ngx_http_lua_socket_udp_upstream_destroy ;
 int socket_udp_metatable_key ;
 int udp_udata_metatable_key ;

void
ngx_http_lua_inject_socket_udp_api(ngx_log_t *log, lua_State *L)
{
    lua_getfield(L, -1, "socket");

    lua_pushcfunction(L, ngx_http_lua_socket_udp);
    lua_setfield(L, -2, "udp");


    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          socket_udp_metatable_key));
    lua_createtable(L, 0 , 6 );

    lua_pushcfunction(L, ngx_http_lua_socket_udp_setpeername);
    lua_setfield(L, -2, "setpeername");

    lua_pushcfunction(L, ngx_http_lua_socket_udp_send);
    lua_setfield(L, -2, "send");

    lua_pushcfunction(L, ngx_http_lua_socket_udp_receive);
    lua_setfield(L, -2, "receive");

    lua_pushcfunction(L, ngx_http_lua_socket_udp_settimeout);
    lua_setfield(L, -2, "settimeout");

    lua_pushcfunction(L, ngx_http_lua_socket_udp_close);
    lua_setfield(L, -2, "close");

    lua_pushvalue(L, -1);
    lua_setfield(L, -2, "__index");
    lua_rawset(L, LUA_REGISTRYINDEX);



    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          udp_udata_metatable_key));
    lua_createtable(L, 0 , 1 );
    lua_pushcfunction(L, ngx_http_lua_socket_udp_upstream_destroy);
    lua_setfield(L, -2, "__gc");
    lua_rawset(L, LUA_REGISTRYINDEX);


    lua_pop(L, 1);
}
