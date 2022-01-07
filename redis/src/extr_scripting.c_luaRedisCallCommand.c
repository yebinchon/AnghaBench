
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaRedisGenericCommand (int *,int) ;

int luaRedisCallCommand(lua_State *lua) {
    return luaRedisGenericCommand(lua,1);
}
