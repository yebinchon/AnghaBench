
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {int idx; } ;
struct TYPE_6__ {TYPE_4__* cap; int * L; } ;
typedef TYPE_1__ CapState ;


 scalar_t__ isclosecap (TYPE_4__*) ;
 scalar_t__ isfullcap (int ) ;
 int luaL_error (int *,char*) ;
 int lua_call (int *,int,int) ;
 int lua_insert (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int ) ;
 int pushcapture (TYPE_1__*) ;
 int updatecache (TYPE_1__*,int) ;

__attribute__((used)) static int foldcap (CapState *cs) {
  int n;
  lua_State *L = cs->L;
  int idx = cs->cap->idx;
  if (isfullcap(cs->cap++) ||
      isclosecap(cs->cap) ||
      (n = pushcapture(cs)) == 0)
    return luaL_error(L, "no initial value for fold capture");
  if (n > 1)
    lua_pop(L, n - 1);
  while (!isclosecap(cs->cap)) {
    lua_pushvalue(L, updatecache(cs, idx));
    lua_insert(L, -2);
    n = pushcapture(cs);
    lua_call(L, n + 1, 1);
  }
  cs->cap++;
  return 1;
}
