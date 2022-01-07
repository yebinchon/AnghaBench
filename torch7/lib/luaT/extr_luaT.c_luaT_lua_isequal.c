
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_argcheck (int *,int ,int,char*) ;
 int luaT_typename (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 scalar_t__ lua_isuserdata (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_rawequal (int *,int,int) ;
 void** lua_touserdata (int *,int) ;

int luaT_lua_isequal(lua_State *L)
{
  if(lua_isuserdata(L, 1) && lua_isuserdata(L, 2))
  {
    void **u1, **u2;
    luaL_argcheck(L, luaT_typename(L, 1), 1, "Torch object expected");
    luaL_argcheck(L, luaT_typename(L, 2), 2, "Torch object expected");

    u1 = lua_touserdata(L, 1);
    u2 = lua_touserdata(L, 2);
    if(*u1 == *u2)
      lua_pushboolean(L, 1);
    else
      lua_pushboolean(L, 0);
  }
  else if(lua_istable(L, 1) && lua_istable(L, 2))
    lua_pushboolean(L, lua_rawequal(L, 1, 2));
  else
    lua_pushboolean(L, 0);
  return 1;
}
