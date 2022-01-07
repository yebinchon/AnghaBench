
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushnil (int *) ;
 int lua_setglobal (int *,char*) ;

void luaRemoveUnsupportedFunctions(lua_State *lua) {
    lua_pushnil(lua);
    lua_setglobal(lua,"loadfile");
    lua_pushnil(lua);
    lua_setglobal(lua,"dofile");
}
