
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int LUA_TTABLE ;
 int luaL_checkstring (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int luaT_cdataname (int *,int,int ) ;
 int lua_gettop (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawset (int *,int ) ;
 int lua_tostring (int *,int) ;

int luaT_lua_metatype(lua_State *L)
{
  if( (lua_gettop(L) != 2) && (lua_gettop(L) != 3) )
    luaL_error(L, "expecting: string table [ctype]");

  luaL_checkstring(L, 1);
  luaL_checktype(L, 2, LUA_TTABLE);

  if(lua_gettop(L) == 3)
  {
    if(!luaT_cdataname(L, 3, lua_tostring(L, 1)))
      luaL_error(L, "could not register cdata type -- missing ffi library?");
  }


  lua_pushvalue(L, 1);
  lua_pushvalue(L, 2);
  lua_rawset(L, LUA_REGISTRYINDEX);


  lua_pushvalue(L, 2);
  lua_pushvalue(L, 1);
  lua_rawset(L, LUA_REGISTRYINDEX);

  return 0;
}
