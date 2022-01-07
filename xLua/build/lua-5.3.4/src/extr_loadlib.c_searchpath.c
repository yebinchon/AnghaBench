
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 char const* LUA_PATH_MARK ;
 int luaL_addvalue (int *) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_gsub (int *,char const*,char const*,char const*) ;
 int luaL_pushresult (int *) ;
 int lua_pushfstring (int *,char*,char const*) ;
 int lua_remove (int *,int) ;
 char const* lua_tostring (int *,int) ;
 char* pushnexttemplate (int *,char const*) ;
 scalar_t__ readable (char const*) ;

__attribute__((used)) static const char *searchpath (lua_State *L, const char *name,
                                             const char *path,
                                             const char *sep,
                                             const char *dirsep) {
  luaL_Buffer msg;
  luaL_buffinit(L, &msg);
  if (*sep != '\0')
    name = luaL_gsub(L, name, sep, dirsep);
  while ((path = pushnexttemplate(L, path)) != ((void*)0)) {
    const char *filename = luaL_gsub(L, lua_tostring(L, -1),
                                     LUA_PATH_MARK, name);
    lua_remove(L, -2);
    if (readable(filename))
      return filename;
    lua_pushfstring(L, "\n\tno file '%s'", filename);
    lua_remove(L, -2);
    luaL_addvalue(&msg);
  }
  luaL_pushresult(&msg);
  return ((void*)0);
}
