
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_CFunction ;


 char const* luaT_newlocalmetatable (int *,char const*,char const*,int ,int ,int ,int ) ;

const char* luaT_newmetatable(lua_State *L, const char *tname, const char *parent_tname,
                              lua_CFunction constructor, lua_CFunction destructor, lua_CFunction factory)
{
  return luaT_newlocalmetatable(L, tname, parent_tname,
                                constructor, destructor, factory, 0);
}
