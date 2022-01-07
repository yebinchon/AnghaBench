
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 int nginx_version ;
 int ngx_http_lua_config_configure ;
 int ngx_http_lua_config_prefix ;
 int ngx_http_lua_version ;

void
ngx_http_lua_inject_config_api(lua_State *L)
{


    lua_createtable(L, 0, 6 );




    lua_pushboolean(L, 0);

    lua_setfield(L, -2, "debug");

    lua_pushcfunction(L, ngx_http_lua_config_prefix);
    lua_setfield(L, -2, "prefix");

    lua_pushinteger(L, nginx_version);
    lua_setfield(L, -2, "nginx_version");

    lua_pushinteger(L, ngx_http_lua_version);
    lua_setfield(L, -2, "ngx_lua_version");

    lua_pushcfunction(L, ngx_http_lua_config_configure);
    lua_setfield(L, -2, "nginx_configure");

    lua_pushliteral(L, "http");
    lua_setfield(L, -2, "subsystem");

    lua_setfield(L, -2, "config");
}
