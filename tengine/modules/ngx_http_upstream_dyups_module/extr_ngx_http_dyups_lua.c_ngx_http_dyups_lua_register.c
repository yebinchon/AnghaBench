
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_delete_upstream ;
 int ngx_http_lua_update_upstream ;

__attribute__((used)) static int
ngx_http_dyups_lua_register(lua_State *L)
{
    lua_createtable(L, 0, 1);

    lua_pushcfunction(L, ngx_http_lua_update_upstream);
    lua_setfield(L, -2, "update");

    lua_pushcfunction(L, ngx_http_lua_delete_upstream);
    lua_setfield(L, -2, "delete");

    return 1;
}
