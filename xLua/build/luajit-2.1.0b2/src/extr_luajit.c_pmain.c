
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Smain {char** argv; int status; int argc; } ;
typedef int lua_State ;


 int FLAGS_EXEC ;
 int FLAGS_INTERACTIVE ;
 int FLAGS_NOENV ;
 int FLAGS_VERSION ;
 int LUAJIT_VERSION_SYM () ;
 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 int LUA_REGISTRYINDEX ;
 int collectargs (char**,int*) ;
 int dofile (int *,int *) ;
 int dotty (int *) ;
 int * globalL ;
 int handle_luainit (int *) ;
 int handle_script (int *,char**,int) ;
 int luaL_openlibs (int *) ;
 int lua_gc (int *,int ,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_setfield (int *,int ,char*) ;
 scalar_t__ lua_stdin_is_tty () ;
 int print_jit_status (int *) ;
 int print_usage () ;
 int print_version () ;
 char* progname ;
 int runargs (int *,char**,int) ;
 struct Smain smain ;

__attribute__((used)) static int pmain(lua_State *L)
{
  struct Smain *s = &smain;
  char **argv = s->argv;
  int script;
  int flags = 0;
  globalL = L;
  if (argv[0] && argv[0][0]) progname = argv[0];
  LUAJIT_VERSION_SYM();
  script = collectargs(argv, &flags);
  if (script < 0) {
    print_usage();
    s->status = 1;
    return 0;
  }
  if ((flags & FLAGS_NOENV)) {
    lua_pushboolean(L, 1);
    lua_setfield(L, LUA_REGISTRYINDEX, "LUA_NOENV");
  }
  lua_gc(L, LUA_GCSTOP, 0);
  luaL_openlibs(L);
  lua_gc(L, LUA_GCRESTART, -1);
  if (!(flags & FLAGS_NOENV)) {
    s->status = handle_luainit(L);
    if (s->status != 0) return 0;
  }
  if ((flags & FLAGS_VERSION)) print_version();
  s->status = runargs(L, argv, (script > 0) ? script : s->argc);
  if (s->status != 0) return 0;
  if (script) {
    s->status = handle_script(L, argv, script);
    if (s->status != 0) return 0;
  }
  if ((flags & FLAGS_INTERACTIVE)) {
    print_jit_status(L);
    dotty(L);
  } else if (script == 0 && !(flags & (FLAGS_EXEC|FLAGS_VERSION))) {
    if (lua_stdin_is_tty()) {
      print_version();
      print_jit_status(L);
      dotty(L);
    } else {
      dofile(L, ((void*)0));
    }
  }
  return 0;
}
