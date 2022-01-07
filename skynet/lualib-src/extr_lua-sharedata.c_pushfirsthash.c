
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int * hash; int L; scalar_t__ sizehash; } ;
typedef int lua_State ;


 int pushkey (int *,int ,int *) ;

__attribute__((used)) static int
pushfirsthash(lua_State *L, struct table * tbl) {
 if (tbl->sizehash) {
  pushkey(L, tbl->L, &tbl->hash[0]);
  return 1;
 } else {
  return 0;
 }
}
