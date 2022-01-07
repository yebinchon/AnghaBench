
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int * LUA_IGMARK ;
 char* luaL_gsub (int *,char const*,char*,char*) ;
 char* lua_pushfstring (int *,char const*,char const*) ;
 int lua_remove (int *,int) ;
 char* strchr (char const*,int ) ;

__attribute__((used)) static const char *mksymname(lua_State *L, const char *modname,
        const char *prefix)
{
  const char *funcname;
  const char *mark = strchr(modname, *LUA_IGMARK);
  if (mark) modname = mark + 1;
  funcname = luaL_gsub(L, modname, ".", "_");
  funcname = lua_pushfstring(L, prefix, funcname);
  lua_remove(L, -2);
  return funcname;
}
