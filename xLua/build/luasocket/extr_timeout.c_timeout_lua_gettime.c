
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushnumber (int *,int ) ;
 int timeout_gettime () ;

__attribute__((used)) static int timeout_lua_gettime(lua_State *L)
{
    lua_pushnumber(L, timeout_gettime());
    return 1;
}
