
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* redisProtocolToLuaType_Aggregate (int *,char*,char) ;
 char* redisProtocolToLuaType_Bool (int *,char*,char) ;
 char* redisProtocolToLuaType_Bulk (int *,char*) ;
 char* redisProtocolToLuaType_Double (int *,char*) ;
 char* redisProtocolToLuaType_Error (int *,char*) ;
 char* redisProtocolToLuaType_Int (int *,char*) ;
 char* redisProtocolToLuaType_Null (int *,char*) ;
 char* redisProtocolToLuaType_Status (int *,char*) ;

char *redisProtocolToLuaType(lua_State *lua, char* reply) {
    char *p = reply;

    switch(*p) {
    case ':': p = redisProtocolToLuaType_Int(lua,reply); break;
    case '$': p = redisProtocolToLuaType_Bulk(lua,reply); break;
    case '+': p = redisProtocolToLuaType_Status(lua,reply); break;
    case '-': p = redisProtocolToLuaType_Error(lua,reply); break;
    case '*': p = redisProtocolToLuaType_Aggregate(lua,reply,*p); break;
    case '%': p = redisProtocolToLuaType_Aggregate(lua,reply,*p); break;
    case '~': p = redisProtocolToLuaType_Aggregate(lua,reply,*p); break;
    case '_': p = redisProtocolToLuaType_Null(lua,reply); break;
    case '#': p = redisProtocolToLuaType_Bool(lua,reply,p[1]); break;
    case ',': p = redisProtocolToLuaType_Double(lua,reply); break;
    }
    return p;
}
