
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int lua_getmetatable (int *,int) ;
 int lua_insert (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawget (int *,int) ;
 int lua_rawset (int *,int) ;

int luaT_cmt__newindex(lua_State *L)
{
  if(!lua_istable(L, 1))
    luaL_error(L, "internal error in __newindex: not a constructor table");

  if(!lua_getmetatable(L, 1))
    luaL_error(L, "internal error in __newindex: no metatable available");

  lua_pushstring(L, "__metatable");
  lua_rawget(L, -2);

  if(!lua_istable(L, -1))
    luaL_error(L, "internal error in __newindex: no metaclass available");

  lua_insert(L, 2);
  lua_pop(L, 1);

  lua_rawset(L, -3);

  return 0;
}
