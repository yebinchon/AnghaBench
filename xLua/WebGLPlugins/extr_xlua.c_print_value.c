
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_absindex (int *,int) ;
 int lua_call (int *,int,int ) ;
 int lua_getglobal (int *,char*) ;
 int lua_pushstring (int *,char*) ;
 int lua_pushvalue (int *,int) ;

void print_value(lua_State *L, char *str, int idx) {
 idx = lua_absindex(L, idx);
 lua_getglobal(L, "print");
 lua_pushstring(L, str);
 lua_pushvalue(L, idx);
 lua_call(L, 2, 0);
}
