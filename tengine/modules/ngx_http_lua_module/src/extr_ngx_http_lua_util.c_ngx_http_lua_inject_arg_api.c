
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int dd (char*,int ,int ) ;
 int luaL_typename (int *,int) ;
 int lua_createtable (int *,int ,int) ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_rawset (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int ngx_http_lua_param_get ;
 int ngx_http_lua_param_set ;

__attribute__((used)) static void
ngx_http_lua_inject_arg_api(lua_State *L)
{
    lua_pushliteral(L, "arg");
    lua_newtable(L);

    lua_createtable(L, 0 , 2 );

    lua_pushcfunction(L, ngx_http_lua_param_get);
    lua_setfield(L, -2, "__index");

    lua_pushcfunction(L, ngx_http_lua_param_set);
    lua_setfield(L, -2, "__newindex");

    lua_setmetatable(L, -2);

    dd("top: %d, type -1: %s", lua_gettop(L), luaL_typename(L, -1));

    lua_rawset(L, -3);
}
