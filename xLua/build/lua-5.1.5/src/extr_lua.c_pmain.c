
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Smain {char** argv; int status; int argc; } ;
typedef int lua_State ;


 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 int collectargs (char**,int*,int*,int*) ;
 int dofile (int *,int *) ;
 int dotty (int *) ;
 int * globalL ;
 int handle_luainit (int *) ;
 int handle_script (int *,char**,int) ;
 int luaL_openlibs (int *) ;
 int lua_gc (int *,int ,int ) ;
 scalar_t__ lua_stdin_is_tty () ;
 scalar_t__ lua_touserdata (int *,int) ;
 int print_usage () ;
 int print_version () ;
 char* progname ;
 int runargs (int *,char**,int) ;

__attribute__((used)) static int pmain (lua_State *L) {
  struct Smain *s = (struct Smain *)lua_touserdata(L, 1);
  char **argv = s->argv;
  int script;
  int has_i = 0, has_v = 0, has_e = 0;
  globalL = L;
  if (argv[0] && argv[0][0]) progname = argv[0];
  lua_gc(L, LUA_GCSTOP, 0);
  luaL_openlibs(L);
  lua_gc(L, LUA_GCRESTART, 0);
  s->status = handle_luainit(L);
  if (s->status != 0) return 0;
  script = collectargs(argv, &has_i, &has_v, &has_e);
  if (script < 0) {
    print_usage();
    s->status = 1;
    return 0;
  }
  if (has_v) print_version();
  s->status = runargs(L, argv, (script > 0) ? script : s->argc);
  if (s->status != 0) return 0;
  if (script)
    s->status = handle_script(L, argv, script);
  if (s->status != 0) return 0;
  if (has_i)
    dotty(L);
  else if (script == 0 && !has_e && !has_v) {
    if (lua_stdin_is_tty()) {
      print_version();
      dotty(L);
    }
    else dofile(L, ((void*)0));
  }
  return 0;
}
