
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
typedef int time_t ;
typedef int lua_State ;


 scalar_t__ lua_isnone (int *,int) ;
 int lua_pushlstring (int *,char*,int) ;
 int time (int *) ;

__attribute__((used)) static void checkseed (lua_State *L) {
  if (lua_isnone(L, 3)) {
    time_t tm = time(((void*)0));
    lua_pushlstring(L, (char *)&tm, sizeof(tm));
  }
}
