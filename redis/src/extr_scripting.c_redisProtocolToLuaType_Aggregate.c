
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {TYPE_1__* lua_client; } ;
struct TYPE_3__ {int resp; } ;


 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_settable (int *,int) ;
 char* redisProtocolToLuaType (int *,char*) ;
 TYPE_2__ server ;
 char* strchr (char*,char) ;
 int string2ll (char*,int,long long*) ;

char *redisProtocolToLuaType_Aggregate(lua_State *lua, char *reply, int atype) {
    char *p = strchr(reply+1,'\r');
    long long mbulklen;
    int j = 0;

    string2ll(reply+1,p-reply-1,&mbulklen);
    if (server.lua_client->resp == 2 || atype == '*') {
        p += 2;
        if (mbulklen == -1) {
            lua_pushboolean(lua,0);
            return p;
        }
        lua_newtable(lua);
        for (j = 0; j < mbulklen; j++) {
            lua_pushnumber(lua,j+1);
            p = redisProtocolToLuaType(lua,p);
            lua_settable(lua,-3);
        }
    } else if (server.lua_client->resp == 3) {




        p += 2;
        lua_newtable(lua);
        lua_pushstring(lua,atype == '%' ? "map" : "set");
        lua_newtable(lua);
        for (j = 0; j < mbulklen; j++) {
            p = redisProtocolToLuaType(lua,p);
            if (atype == '%') {
                p = redisProtocolToLuaType(lua,p);
            } else {
                lua_pushboolean(lua,1);
            }
            lua_settable(lua,-3);
        }
        lua_settable(lua,-3);
    }
    return p;
}
