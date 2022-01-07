
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int LUA_OK ;
 int docall (int *,int,int ) ;
 int luaL_loadfile (int *,char const*) ;
 int pushargs (int *) ;
 int report (int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int handle_script (lua_State *L, char **argv) {
  int status;
  const char *fname = argv[0];
  if (strcmp(fname, "-") == 0 && strcmp(argv[-1], "--") != 0)
    fname = ((void*)0);
  status = luaL_loadfile(L, fname);
  if (status == LUA_OK) {
    int n = pushargs(L);
    status = docall(L, n, LUA_MULTRET);
  }
  return report(L, status);
}
