
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char const* luaT_typenameid (int *,char const*) ;

const char* luaT_typename2id(lua_State *L, const char *tname)
{
  return luaT_typenameid(L, tname);
}
