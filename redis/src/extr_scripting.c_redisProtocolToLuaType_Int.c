
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;


 int lua_pushnumber (int *,int ) ;
 char* strchr (char*,char) ;
 int string2ll (char*,int,long long*) ;

char *redisProtocolToLuaType_Int(lua_State *lua, char *reply) {
    char *p = strchr(reply+1,'\r');
    long long value;

    string2ll(reply+1,p-reply-1,&value);
    lua_pushnumber(lua,(lua_Number)value);
    return p+2;
}
