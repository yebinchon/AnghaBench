
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_13__ {char const* s; scalar_t__ valuecached; TYPE_1__* cap; int * L; } ;
struct TYPE_12__ {char const* s; int kind; } ;
typedef TYPE_1__ Capture ;
typedef TYPE_2__ CapState ;


 int Cclose ;
 scalar_t__ Cgroup ;
 int LUA_MULTRET ;
 int SUBJIDX ;
 int assert (int) ;
 scalar_t__ captype (TYPE_1__*) ;
 int finddyncap (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* findopen (TYPE_1__*) ;
 int luaL_checkstack (int *,int,char*) ;
 int lua_call (int *,int,int ) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushvalue (int *,int ) ;
 int lua_remove (int *,int) ;
 int pushluaval (TYPE_2__*) ;
 int pushnestedvalues (TYPE_2__*,int ) ;

int runtimecap (CapState *cs, Capture *close, const char *s, int *rem) {
  int n, id;
  lua_State *L = cs->L;
  int otop = lua_gettop(L);
  Capture *open = findopen(close);
  assert(captype(open) == Cgroup);
  id = finddyncap(open, close);
  close->kind = Cclose;
  close->s = s;
  cs->cap = open; cs->valuecached = 0;
  luaL_checkstack(L, 4, "too many runtime captures");
  pushluaval(cs);
  lua_pushvalue(L, SUBJIDX);
  lua_pushinteger(L, s - cs->s + 1);
  n = pushnestedvalues(cs, 0);
  lua_call(L, n + 2, LUA_MULTRET);
  if (id > 0) {
    int i;
    for (i = id; i <= otop; i++)
      lua_remove(L, id);
    *rem = otop - id + 1;
  }
  else
    *rem = 0;
  return close - open;
}
