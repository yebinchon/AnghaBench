
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TTree ;


 int concattable (int *,int,int) ;
 int correctkeys (int *,int) ;
 int ktablelen (int *,int) ;
 scalar_t__ lp_equal (int *,int,int) ;
 int lua_createtable (int *,int,int ) ;
 int lua_getuservalue (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_setuservalue (int *,int) ;

__attribute__((used)) static void joinktables (lua_State *L, int p1, TTree *t2, int p2) {
  int n1, n2;
  lua_getuservalue(L, p1);
  lua_getuservalue(L, p2);
  n1 = ktablelen(L, -2);
  n2 = ktablelen(L, -1);
  if (n1 == 0 && n2 == 0)
    lua_pop(L, 2);
  else if (n2 == 0 || lp_equal(L, -2, -1)) {
    lua_pop(L, 1);
    lua_setuservalue(L, -2);
  }
  else if (n1 == 0) {
    lua_setuservalue(L, -3);
    lua_pop(L, 1);
  }
  else {
    lua_createtable(L, n1 + n2, 0);

    concattable(L, -3, -1);
    concattable(L, -2, -1);
    lua_setuservalue(L, -4);
    lua_pop(L, 2);
    correctkeys(t2, n1);
  }
}
