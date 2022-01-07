
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int luaL_error (int *,char*) ;
 int lua_call (int *,int,int ) ;
 int lua_getmetatable (int *,int) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawget (int *,int) ;
 int lua_remove (int *,int) ;

int luaT_cmt__call(lua_State *L)
{
  if(!lua_istable(L, 1))
    luaL_error(L, "internal error in __call: not a constructor table");

  if(!lua_getmetatable(L, 1))
    luaL_error(L, "internal error in __call: no metatable available");

  lua_pushstring(L, "__new");
  lua_rawget(L, -2);

  if(lua_isnil(L, -1))
    luaL_error(L, "no constructor available");

  lua_remove(L, 1);
  lua_insert(L, 1);
  lua_pop(L, 1);

  lua_call(L, lua_gettop(L)-1, LUA_MULTRET);
  return lua_gettop(L);
}
