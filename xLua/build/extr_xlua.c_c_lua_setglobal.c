
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_setglobal (int *,int ) ;
 int lua_tostring (int *,int) ;

__attribute__((used)) static int c_lua_setglobal(lua_State* L) {
 lua_setglobal(L, lua_tostring(L, 1));
 return 0;
}
