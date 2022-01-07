
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void lua_State ;
struct TYPE_4__ {int currentline; scalar_t__ event; } ;
typedef TYPE_1__ lua_Debug ;


 int KEY_HOOK ;
 int LUA_REGISTRYINDEX ;
 int lua_assert (int ) ;
 int lua_call (void*,int,int ) ;
 int lua_getinfo (void*,char*,TYPE_1__*) ;
 scalar_t__ lua_isfunction (void*,int) ;
 int lua_pushinteger (void*,int ) ;
 int lua_pushlightuserdata (void*,void*) ;
 int lua_pushnil (void*) ;
 int lua_pushstring (void*,char const* const) ;
 int lua_rawget (void*,int) ;

__attribute__((used)) static void hookf (lua_State *L, lua_Debug *ar) {
  static const char *const hooknames[] =
    {"call", "return", "line", "count", "tail return"};
  lua_pushlightuserdata(L, (void *)&KEY_HOOK);
  lua_rawget(L, LUA_REGISTRYINDEX);
  lua_pushlightuserdata(L, L);
  lua_rawget(L, -2);
  if (lua_isfunction(L, -1)) {
    lua_pushstring(L, hooknames[(int)ar->event]);
    if (ar->currentline >= 0)
      lua_pushinteger(L, ar->currentline);
    else lua_pushnil(L);
    lua_assert(lua_getinfo(L, "lS", ar));
    lua_call(L, 2, 0);
  }
}
