
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int checkupval (int *,int,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_upvalueid (int *,int,int) ;

__attribute__((used)) static int db_upvalueid (lua_State *L) {
  int n = checkupval(L, 1, 2);
  lua_pushlightuserdata(L, lua_upvalueid(L, 1, n));
  return 1;
}
