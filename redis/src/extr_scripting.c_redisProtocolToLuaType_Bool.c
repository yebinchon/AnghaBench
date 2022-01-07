
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushboolean (int *,int) ;
 char* strchr (char*,char) ;

char *redisProtocolToLuaType_Bool(lua_State *lua, char *reply, int tf) {
    char *p = strchr(reply+1,'\r');
    lua_pushboolean(lua,tf == 't');
    return p+2;
}
