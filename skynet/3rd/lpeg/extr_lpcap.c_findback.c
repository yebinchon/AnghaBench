
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_13__ {int ocap; int * L; } ;
struct TYPE_12__ {int idx; } ;
typedef TYPE_1__ Capture ;
typedef TYPE_2__ CapState ;


 scalar_t__ Cgroup ;
 scalar_t__ captype (TYPE_1__*) ;
 TYPE_1__* findopen (TYPE_1__*) ;
 int getfromktable (TYPE_2__*,int ) ;
 scalar_t__ isclosecap (TYPE_1__*) ;
 int isfullcap (TYPE_1__*) ;
 scalar_t__ lp_equal (int *,int,int) ;
 int luaL_error (int *,char*,int ) ;
 int lua_pop (int *,int) ;
 int lua_tostring (int *,int) ;

__attribute__((used)) static Capture *findback (CapState *cs, Capture *cap) {
  lua_State *L = cs->L;
  while (cap-- > cs->ocap) {
    if (isclosecap(cap))
      cap = findopen(cap);
    else if (!isfullcap(cap))
      continue;
    if (captype(cap) == Cgroup) {
      getfromktable(cs, cap->idx);
      if (lp_equal(L, -2, -1)) {
        lua_pop(L, 2);
        return cap;
      }
      else lua_pop(L, 1);
    }
  }
  luaL_error(L, "back reference '%s' not found", lua_tostring(L, -1));
  return ((void*)0);
}
