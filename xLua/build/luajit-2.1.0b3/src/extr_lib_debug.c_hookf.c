
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int currentline; scalar_t__ event; } ;
typedef TYPE_1__ lua_Debug ;


 int KEY_HOOK ;
 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int,int ) ;
 scalar_t__ lua_isfunction (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const* const) ;
 int lua_rawget (int *,int ) ;

__attribute__((used)) static void hookf(lua_State *L, lua_Debug *ar)
{
  static const char *const hooknames[] =
    {"call", "return", "line", "count", "tail return"};
  lua_pushlightuserdata(L, KEY_HOOK);
  lua_rawget(L, LUA_REGISTRYINDEX);
  if (lua_isfunction(L, -1)) {
    lua_pushstring(L, hooknames[(int)ar->event]);
    if (ar->currentline >= 0)
      lua_pushinteger(L, ar->currentline);
    else lua_pushnil(L);
    lua_call(L, 2, 0);
  }
}
