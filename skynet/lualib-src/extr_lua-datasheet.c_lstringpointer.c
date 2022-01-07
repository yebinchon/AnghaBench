
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int lua_pushlightuserdata (int *,void*) ;

__attribute__((used)) static int
lstringpointer(lua_State *L) {
 const char * str = luaL_checkstring(L, 1);
 lua_pushlightuserdata(L, (void *)str);
 return 1;
}
