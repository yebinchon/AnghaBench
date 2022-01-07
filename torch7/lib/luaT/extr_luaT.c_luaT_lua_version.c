
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkany (int *,int) ;
 char* luaT_cdataname (int *,int,int *) ;
 scalar_t__ luaT_iscdata (int *,int) ;
 int luaT_pushmetatable (int *,char const*) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawget (int *,int) ;

int luaT_lua_version(lua_State *L)
{
  luaL_checkany(L, 1);

  if(luaT_iscdata(L, 1))
  {
    const char *tname = luaT_cdataname(L, 1, ((void*)0));
    if(tname)
    {
      luaT_pushmetatable(L, tname);
      lua_pushstring(L, "__version");
      lua_rawget(L, -2);
      return 1;
    }
    return 0;
  }
  else if(lua_getmetatable(L, 1))
  {
    lua_pushstring(L, "__version");
    lua_rawget(L, -2);
    return 1;
  }
  return 0;
}
