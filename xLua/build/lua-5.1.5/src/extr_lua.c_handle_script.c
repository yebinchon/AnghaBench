
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int docall (int *,int,int ) ;
 int getargs (int *,char**,int) ;
 int luaL_loadfile (int *,char const*) ;
 int lua_insert (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_setglobal (int *,char*) ;
 int report (int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int handle_script (lua_State *L, char **argv, int n) {
  int status;
  const char *fname;
  int narg = getargs(L, argv, n);
  lua_setglobal(L, "arg");
  fname = argv[n];
  if (strcmp(fname, "-") == 0 && strcmp(argv[n-1], "--") != 0)
    fname = ((void*)0);
  status = luaL_loadfile(L, fname);
  lua_insert(L, -(narg+1));
  if (status == 0)
    status = docall(L, narg, 0);
  else
    lua_pop(L, narg);
  return report(L, status);
}
