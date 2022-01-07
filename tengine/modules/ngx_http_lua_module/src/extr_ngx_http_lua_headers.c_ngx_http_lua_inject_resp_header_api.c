
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 int lua_newtable (int *) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int ngx_http_lua_ngx_header_get ;
 int ngx_http_lua_ngx_header_set ;
 int ngx_http_lua_ngx_resp_get_headers ;

void
ngx_http_lua_inject_resp_header_api(lua_State *L)
{
    lua_newtable(L);

    lua_createtable(L, 0, 2);
    lua_pushcfunction(L, ngx_http_lua_ngx_header_get);
    lua_setfield(L, -2, "__index");
    lua_pushcfunction(L, ngx_http_lua_ngx_header_set);
    lua_setfield(L, -2, "__newindex");
    lua_setmetatable(L, -2);

    lua_setfield(L, -2, "header");

    lua_createtable(L, 0, 1);

    lua_pushcfunction(L, ngx_http_lua_ngx_resp_get_headers);
    lua_setfield(L, -2, "get_headers");

    lua_setfield(L, -2, "resp");
}
