
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,int,char const*,...) ;
 void* luaT_toudata (int *,int,char const*) ;
 int lua_getfield (int *,int,char const*) ;
 scalar_t__ lua_isnil (int *,int) ;

void *luaT_getfieldcheckudata(lua_State *L, int ud, const char *field, const char *tname)
{
  void *p;
  lua_getfield(L, ud, field);
  if(lua_isnil(L, -1))
    luaL_error(L, "bad argument #%d (field %s does not exist)", ud, field);
  p = luaT_toudata(L, -1, tname);
  if(!p)
    luaL_error(L, "bad argument #%d (field %s is not a %s)", ud, field, tname);
  return p;
}
