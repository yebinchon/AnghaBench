
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_ERRFILE ;
 int errno ;
 int lua_pushfstring (int *,char*,char const*,char const*,char const*) ;
 int lua_remove (int *,int) ;
 char* lua_tostring (int *,int) ;
 char* strerror (int ) ;

__attribute__((used)) static int errfile (lua_State *L, const char *what, int fnameindex) {
  const char *serr = strerror(errno);
  const char *filename = lua_tostring(L, fnameindex) + 1;
  lua_pushfstring(L, "cannot %s %s: %s", what, filename, serr);
  lua_remove(L, fnameindex);
  return LUA_ERRFILE;
}
