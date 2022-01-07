
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_OK ;
 int dobytecode (int *,char**) ;
 int dojitcmd (int *,char const*) ;
 int dojitopt (int *,char*) ;
 int dolibrary (int *,char const*) ;
 int dostring (int *,char const*,char*) ;
 int lua_assert (int) ;

__attribute__((used)) static int runargs(lua_State *L, char **argv, int argn)
{
  int i;
  for (i = 1; i < argn; i++) {
    if (argv[i] == ((void*)0)) continue;
    lua_assert(argv[i][0] == '-');
    switch (argv[i][1]) {
    case 'e': {
      const char *chunk = argv[i] + 2;
      if (*chunk == '\0') chunk = argv[++i];
      lua_assert(chunk != ((void*)0));
      if (dostring(L, chunk, "=(command line)") != 0)
 return 1;
      break;
      }
    case 'l': {
      const char *filename = argv[i] + 2;
      if (*filename == '\0') filename = argv[++i];
      lua_assert(filename != ((void*)0));
      if (dolibrary(L, filename))
 return 1;
      break;
      }
    case 'j': {
      const char *cmd = argv[i] + 2;
      if (*cmd == '\0') cmd = argv[++i];
      lua_assert(cmd != ((void*)0));
      if (dojitcmd(L, cmd))
 return 1;
      break;
      }
    case 'O':
      if (dojitopt(L, argv[i] + 2))
 return 1;
      break;
    case 'b':
      return dobytecode(L, argv+i);
    default: break;
    }
  }
  return LUA_OK;
}
