
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int LUA_TNUMBER ;
 int LUA_TSTRING ;
 int LUA_TTABLE ;
 int luaL_error (int *,char*,int ) ;
 int lua_isinteger (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_tointeger (int *,int) ;
 int lua_tonumber (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;

__attribute__((used)) static int
countsize(lua_State *L, int sizearray) {
 int n = 0;
 lua_pushnil(L);
 while (lua_next(L, 1) != 0) {
  int type = lua_type(L, -2);
  ++n;
  if (type == LUA_TNUMBER) {
   if (!lua_isinteger(L, -2)) {
    luaL_error(L, "Invalid key %f", lua_tonumber(L, -2));
   }
   lua_Integer nkey = lua_tointeger(L, -2);
   if (nkey > 0 && nkey <= sizearray) {
    --n;
   }
  } else if (type != LUA_TSTRING && type != LUA_TTABLE) {
   luaL_error(L, "Invalid key type %s", lua_typename(L, type));
  }
  lua_pop(L, 1);
 }

 return n;
}
