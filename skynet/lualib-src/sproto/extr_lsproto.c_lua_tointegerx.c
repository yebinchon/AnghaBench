
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int int64_t ;


 scalar_t__ lua_isnumber (int *,int) ;
 int lua_tointeger (int *,int) ;

__attribute__((used)) static int64_t lua_tointegerx(lua_State *L, int idx, int *isnum) {
 if (lua_isnumber(L, idx)) {
  if (isnum) *isnum = 1;
  return (int64_t)lua_tointeger(L, idx);
 }
 else {
  if (isnum) *isnum = 0;
  return 0;
 }
}
