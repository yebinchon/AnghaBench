
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* LUA_DBLIBNAME ;
 char* LUA_LOADLIBNAME ;
 char* LUA_MATHLIBNAME ;
 char* LUA_OSLIBNAME ;
 char* LUA_STRLIBNAME ;
 char* LUA_TABLIBNAME ;
 int luaLoadLib (int *,char*,int ) ;
 int luaopen_base ;
 int luaopen_bit ;
 int luaopen_cjson ;
 int luaopen_cmsgpack ;
 int luaopen_debug ;
 int luaopen_math ;
 int luaopen_os ;
 int luaopen_package ;
 int luaopen_string ;
 int luaopen_struct ;
 int luaopen_table ;

void luaLoadLibraries(lua_State *lua) {
    luaLoadLib(lua, "", luaopen_base);
    luaLoadLib(lua, LUA_TABLIBNAME, luaopen_table);
    luaLoadLib(lua, LUA_STRLIBNAME, luaopen_string);
    luaLoadLib(lua, LUA_MATHLIBNAME, luaopen_math);
    luaLoadLib(lua, LUA_DBLIBNAME, luaopen_debug);
    luaLoadLib(lua, "cjson", luaopen_cjson);
    luaLoadLib(lua, "struct", luaopen_struct);
    luaLoadLib(lua, "cmsgpack", luaopen_cmsgpack);
    luaLoadLib(lua, "bit", luaopen_bit);





}
