
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushnil (int *) ;
 char* strchr (char*,char) ;

char *redisProtocolToLuaType_Null(lua_State *lua, char *reply) {
    char *p = strchr(reply+1,'\r');
    lua_pushnil(lua);
    return p+2;
}
