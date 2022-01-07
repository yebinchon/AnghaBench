
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {scalar_t__ idx; } ;
struct TYPE_8__ {TYPE_6__* cap; int * L; } ;
typedef TYPE_1__ CapState ;


 scalar_t__ Cgroup ;
 scalar_t__ captype (TYPE_6__*) ;
 int isclosecap (TYPE_6__*) ;
 scalar_t__ isfullcap (int ) ;
 int lua_newtable (int *) ;
 int lua_rawseti (int *,int,int) ;
 int lua_settable (int *,int) ;
 int pushcapture (TYPE_1__*) ;
 int pushluaval (TYPE_1__*) ;
 int pushonenestedvalue (TYPE_1__*) ;

__attribute__((used)) static int tablecap (CapState *cs) {
  lua_State *L = cs->L;
  int n = 0;
  lua_newtable(L);
  if (isfullcap(cs->cap++))
    return 1;
  while (!isclosecap(cs->cap)) {
    if (captype(cs->cap) == Cgroup && cs->cap->idx != 0) {
      pushluaval(cs);
      pushonenestedvalue(cs);
      lua_settable(L, -3);
    }
    else {
      int i;
      int k = pushcapture(cs);
      for (i = k; i > 0; i--)
        lua_rawseti(L, -(i + 1), n + i);
      n += k;
    }
  }
  cs->cap++;
  return 1;
}
