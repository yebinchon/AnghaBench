
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,char const*) ;
 char* luaT_typenameid (int *,char const*) ;

const char* luaT_checktypename2id(lua_State *L, const char *tname)
{
  const char* id = luaT_typenameid(L, tname);
  if(!id)
    luaL_error(L, "unknown class <%s>", tname);
  return id;
}
