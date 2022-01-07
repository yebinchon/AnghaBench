
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,int,char const*) ;
 int lua_getfield (int *,int,char const*) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_istable (int *,int) ;

void luaT_getfieldchecktable(lua_State *L, int ud, const char *field)
{
  lua_getfield(L, ud, field);
  if(lua_isnil(L, -1))
    luaL_error(L, "bad argument #%d (field %s does not exist)", ud, field);
  if(!lua_istable(L, -1))
    luaL_error(L, "bad argument #%d (field %s is not a table)", ud, field);
}
