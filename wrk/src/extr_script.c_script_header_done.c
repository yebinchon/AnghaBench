
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_pushresult (int *) ;

void script_header_done(lua_State *L, luaL_Buffer *buffer) {
    luaL_pushresult(buffer);
}
