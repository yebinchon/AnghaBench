
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int currentline; scalar_t__ event; } ;
typedef TYPE_1__ lua_Debug ;


 int HOOKKEY ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 int lua_call (int *,int,int) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const* const) ;
 int lua_pushthread (int *) ;
 scalar_t__ lua_rawget (int *,int) ;
 int lua_rawgetp (int *,int ,int *) ;
 int lua_toboolean (int *,int) ;
 int lua_yield (int *,int ) ;

__attribute__((used)) static void hookf (lua_State *L, lua_Debug *ar) {
  static const char *const hooknames[] =
    {"call", "return", "line", "count", "tail call"};
  lua_rawgetp(L, LUA_REGISTRYINDEX, &HOOKKEY);
  lua_pushthread(L);
  if (lua_rawget(L, -2) == LUA_TFUNCTION) {
    lua_pushstring(L, hooknames[(int)ar->event]);
    if (ar->currentline >= 0)
      lua_pushinteger(L, ar->currentline);
    else lua_pushnil(L);
    lua_call(L, 2, 1);
 int yield = lua_toboolean(L, -1);
 lua_pop(L,1);
 if (yield) {
  lua_yield(L, 0);
 }
  }
}
