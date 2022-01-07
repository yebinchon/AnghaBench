
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_error (int *) ;
 int lua_gettable (int *,int) ;
 int lua_pushstring (int *,char*) ;

int luaRaiseError(lua_State *lua) {
    lua_pushstring(lua,"err");
    lua_gettable(lua,-2);
    return lua_error(lua);
}
