
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int key; } ;
typedef TYPE_1__ TTree ;


 int TOpenCall ;
 int addtonewktable (int *,int ,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_isnoneornil (int *,int) ;
 TYPE_1__* newleaf (int *,int ) ;

__attribute__((used)) static int lp_V (lua_State *L) {
  TTree *tree = newleaf(L, TOpenCall);
  luaL_argcheck(L, !lua_isnoneornil(L, 1), 1, "non-nil value expected");
  tree->key = addtonewktable(L, 0, 1);
  return 1;
}
