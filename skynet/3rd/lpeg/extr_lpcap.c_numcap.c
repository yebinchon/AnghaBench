
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int L; TYPE_1__* cap; } ;
struct TYPE_6__ {int idx; } ;
typedef TYPE_2__ CapState ;


 int luaL_error (int ,char*,int) ;
 int lua_pop (int ,int) ;
 int lua_pushvalue (int ,int) ;
 int lua_replace (int ,int) ;
 int nextcap (TYPE_2__*) ;
 int pushnestedvalues (TYPE_2__*,int ) ;

__attribute__((used)) static int numcap (CapState *cs) {
  int idx = cs->cap->idx;
  if (idx == 0) {
    nextcap(cs);
    return 0;
  }
  else {
    int n = pushnestedvalues(cs, 0);
    if (n < idx)
      return luaL_error(cs->L, "no capture '%d'", idx);
    else {
      lua_pushvalue(cs->L, -(n - idx + 1));
      lua_replace(cs->L, -(n + 1));
      lua_pop(cs->L, n - 1);
      return 1;
    }
  }
}
