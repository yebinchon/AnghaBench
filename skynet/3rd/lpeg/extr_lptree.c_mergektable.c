
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TTree ;


 int concattable (int *,int,int) ;
 int correctkeys (int *,int) ;
 int lua_getuservalue (int *,int) ;
 int lua_pop (int *,int) ;

__attribute__((used)) static void mergektable (lua_State *L, int idx, TTree *stree) {
  int n;
  lua_getuservalue(L, -1);
  lua_getuservalue(L, idx);
  n = concattable(L, -1, -2);
  lua_pop(L, 2);
  correctkeys(stree, n);
}
