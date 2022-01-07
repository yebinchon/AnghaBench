
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {TYPE_1__* lua_client; } ;
struct TYPE_3__ {int resp; } ;


 int lua_error (int *) ;
 int lua_gettop (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_tonumber (int *,int) ;
 TYPE_2__ server ;

int luaSetResp(lua_State *lua) {
    int argc = lua_gettop(lua);

    if (argc != 1) {
        lua_pushstring(lua, "redis.setresp() requires one argument.");
        return lua_error(lua);
    }

    int resp = lua_tonumber(lua,-argc);
    if (resp != 2 && resp != 3) {
        lua_pushstring(lua, "RESP version must be 2 or 3.");
        return lua_error(lua);
    }

    server.lua_client->resp = resp;
    return 0;
}
