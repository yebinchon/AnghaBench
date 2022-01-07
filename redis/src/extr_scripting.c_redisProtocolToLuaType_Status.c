
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_newtable (int *) ;
 int lua_pushlstring (int *,char*,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_settable (int *,int) ;
 char* strchr (char*,char) ;

char *redisProtocolToLuaType_Status(lua_State *lua, char *reply) {
    char *p = strchr(reply+1,'\r');

    lua_newtable(lua);
    lua_pushstring(lua,"ok");
    lua_pushlstring(lua,reply+1,p-reply-1);
    lua_settable(lua,-3);
    return p+2;
}
