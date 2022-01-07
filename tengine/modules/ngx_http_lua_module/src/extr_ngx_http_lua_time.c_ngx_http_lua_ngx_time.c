
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;


 int lua_pushnumber (int *,int ) ;
 scalar_t__ ngx_time () ;

__attribute__((used)) static int
ngx_http_lua_ngx_time(lua_State *L)
{
    lua_pushnumber(L, (lua_Number) ngx_time());

    return 1;
}
