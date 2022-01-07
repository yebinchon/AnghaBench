
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int luaL_error (int *,char*) ;
 int lua_call (int *,int,int ) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getmetatable (int *,int) ;
 int lua_gettable (int *,int) ;
 int lua_isfunction (int *,int) ;
 int lua_isnil (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_toboolean (int *,int) ;

__attribute__((used)) static int luaT_mt__index(lua_State *L)
{
  if(!lua_getmetatable(L, 1))
    luaL_error(L, "critical internal indexing error: no metatable found");

  if(!lua_istable(L, -1))
    luaL_error(L, "critical internal indexing error: not a metatable");


  lua_getfield(L, -1, "__index__");
  if(!lua_isnil(L, -1))
  {
    int result;

    if(!lua_isfunction(L, -1))
      luaL_error(L, "critical internal indexing error: __index__ is not a function");

    lua_pushvalue(L, 1);
    lua_pushvalue(L, 2);

    lua_call(L, 2, LUA_MULTRET);

    result = lua_toboolean(L, -1);
    lua_pop(L, 1);

    if(result)
      return 1;





  }
  else
    lua_pop(L, 1);

  lua_pushvalue(L, 2);
  lua_gettable(L, -2);

  return 1;
}
