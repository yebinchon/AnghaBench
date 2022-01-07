
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int Cgroup ;
 int capture_aux (int *,int ,int) ;
 scalar_t__ lua_isnoneornil (int *,int) ;

__attribute__((used)) static int lp_groupcapture (lua_State *L) {
  if (lua_isnoneornil(L, 2))
    return capture_aux(L, Cgroup, 0);
  else
    return capture_aux(L, Cgroup, 2);
}
