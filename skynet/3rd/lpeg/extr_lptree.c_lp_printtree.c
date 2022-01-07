
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TTree ;


 int finalfix (int *,int ,int *,int *) ;
 int * getpatt (int *,int,int *) ;
 int lua_getuservalue (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_toboolean (int *,int) ;
 int printktable (int *,int) ;
 int printtree (int *,int ) ;

__attribute__((used)) static int lp_printtree (lua_State *L) {
  TTree *tree = getpatt(L, 1, ((void*)0));
  int c = lua_toboolean(L, 2);
  if (c) {
    lua_getuservalue(L, 1);
    finalfix(L, 0, ((void*)0), tree);
    lua_pop(L, 1);
  }
  printktable(L, 1);
  printtree(tree, 0);
  return 0;
}
