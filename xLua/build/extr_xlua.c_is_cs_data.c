
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TUSERDATA ;
 scalar_t__ lua_getmetatable (int *,int) ;
 int lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_rawget (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int tag ;

__attribute__((used)) static int is_cs_data(lua_State *L, int idx) {
 if (LUA_TUSERDATA == lua_type(L, idx) && lua_getmetatable(L, idx)) {
  lua_pushlightuserdata(L, &tag);
  lua_rawget(L,-2);
  if (!lua_isnil (L,-1)) {
   lua_pop (L, 2);
   return 1;
  }
  lua_pop (L, 2);
 }
 return 0;
}
