
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_call (int *,int,int ) ;
 int lua_getglobal (int *,char*) ;
 int lua_pushstring (int *,char*) ;

void print_str(lua_State *L, char *str) {
 lua_getglobal(L, "print");
 lua_pushstring(L, str);
 lua_call(L, 1, 0);
}
