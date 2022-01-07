
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luaL_Reg {int dummy; } ;
typedef int lua_State ;


 int LUA_TTABLE ;
 int luaL_checktype (int *,int,int ) ;
 int luaT_setfuncs (int *,struct luaL_Reg const*,int ) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_rawget (int *,int) ;
 int lua_rawset (int *,int) ;

void luaT_registeratname(lua_State *L, const struct luaL_Reg *methods, const char *name)
{
  int idx = lua_gettop(L);

  luaL_checktype(L, idx, LUA_TTABLE);
  lua_pushstring(L, name);
  lua_rawget(L, idx);

  if(lua_isnil(L, -1))
  {
    lua_pop(L, 1);
    lua_pushstring(L, name);
    lua_newtable(L);
    lua_rawset(L, idx);

    lua_pushstring(L, name);
    lua_rawget(L, idx);
  }

  luaT_setfuncs(L, methods, 0);
  lua_pop(L, 1);
}
