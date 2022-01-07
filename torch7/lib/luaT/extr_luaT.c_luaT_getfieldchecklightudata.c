
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,int,char const*) ;
 int lua_getfield (int *,int,char const*) ;
 int lua_islightuserdata (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 void* lua_touserdata (int *,int) ;

void *luaT_getfieldchecklightudata(lua_State *L, int ud, const char *field)
{
  void *p;
  lua_getfield(L, ud, field);
  if(lua_isnil(L, -1))
    luaL_error(L, "bad argument #%d (field %s does not exist)", ud, field);

  if(!lua_islightuserdata(L, -1))
    luaL_error(L, "bad argument #%d (field %s is not a light userdata)", ud, field);

  p = lua_touserdata(L, -1);

  return p;
}
