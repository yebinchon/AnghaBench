
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {int n; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_2__ TTree ;


 int MAXBEHIND ;
 int TBehind ;
 int fixedlen (TYPE_2__*) ;
 TYPE_2__* getpatt (int *,int,int *) ;
 int hascaptures (TYPE_2__*) ;
 int luaL_argcheck (int *,int,int,char*) ;
 TYPE_2__* newroot1sib (int *,int ) ;

__attribute__((used)) static int lp_behind (lua_State *L) {
  TTree *tree;
  TTree *tree1 = getpatt(L, 1, ((void*)0));
  int n = fixedlen(tree1);
  luaL_argcheck(L, n >= 0, 1, "pattern may not have fixed length");
  luaL_argcheck(L, !hascaptures(tree1), 1, "pattern have captures");
  luaL_argcheck(L, n <= MAXBEHIND, 1, "pattern too long to look behind");
  tree = newroot1sib(L, TBehind);
  tree->u.n = n;
  return 1;
}
