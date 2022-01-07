
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ lua_isnone (int *,int) ;
 int lua_pushboolean (int *,int) ;
 scalar_t__ lua_toboolean (int *,int) ;
 int mallctl_bool (char*,int*) ;

__attribute__((used)) static int
lprofactive(lua_State *L) {
 bool *pval, active;
 if (lua_isnone(L, 1)) {
  pval = ((void*)0);
 } else {
  active = lua_toboolean(L, 1) ? 1 : 0;
  pval = &active;
 }
 bool ret = mallctl_bool("prof.active", pval);
 lua_pushboolean(L, ret);
 return 1;
}
