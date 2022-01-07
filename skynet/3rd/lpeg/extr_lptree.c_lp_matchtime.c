
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int key; } ;
typedef TYPE_1__ TTree ;


 int LUA_TFUNCTION ;
 int TRunTime ;
 int addtonewktable (int *,int,int) ;
 int luaL_checktype (int *,int,int ) ;
 TYPE_1__* newroot1sib (int *,int ) ;

__attribute__((used)) static int lp_matchtime (lua_State *L) {
  TTree *tree;
  luaL_checktype(L, 2, LUA_TFUNCTION);
  tree = newroot1sib(L, TRunTime);
  tree->key = addtonewktable(L, 1, 2);
  return 1;
}
