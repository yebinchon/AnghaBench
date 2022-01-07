
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Capture ;


 int finddyncap (int *,int *) ;
 int lua_gettop (int *) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int removedyncap (lua_State *L, Capture *capture,
                         int level, int last) {
  int id = finddyncap(capture + level, capture + last);
  int top = lua_gettop(L);
  if (id == 0) return 0;
  lua_settop(L, id - 1);
  return top - id + 1;
}
