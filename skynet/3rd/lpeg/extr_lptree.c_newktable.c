
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int,int ) ;
 int lua_setuservalue (int *,int) ;

__attribute__((used)) static void newktable (lua_State *L, int n) {
  lua_createtable(L, n, 0);
  lua_setuservalue(L, -2);
}
