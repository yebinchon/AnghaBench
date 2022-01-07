
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checknumber (int *,int) ;
 int usleep (int) ;

__attribute__((used)) static int
lusleep(lua_State *L) {
 int n = luaL_checknumber(L, 1);
 usleep(n);
 return 0;
}
