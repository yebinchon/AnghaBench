
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TSTRING ;
 int luaPushError (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_settable (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

int luaRedisReturnSingleFieldTable(lua_State *lua, char *field) {
    if (lua_gettop(lua) != 1 || lua_type(lua,-1) != LUA_TSTRING) {
        luaPushError(lua, "wrong number or type of arguments");
        return 1;
    }

    lua_newtable(lua);
    lua_pushstring(lua, field);
    lua_pushvalue(lua, -3);
    lua_settable(lua, -3);
    return 1;
}
