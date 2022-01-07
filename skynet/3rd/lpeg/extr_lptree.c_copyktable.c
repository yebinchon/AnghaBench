
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_getuservalue (int *,int) ;
 int lua_setuservalue (int *,int) ;

__attribute__((used)) static void copyktable (lua_State *L, int idx) {
  lua_getuservalue(L, idx);
  lua_setuservalue(L, -2);
}
