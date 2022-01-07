
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_call (int *,int,int ) ;
 int lua_getglobal (int *,char*) ;
 int lua_pushvalue (int *,int) ;

void print_top(lua_State *L) {
 lua_getglobal(L, "print");
 lua_pushvalue(L, -2);
 lua_call(L, 1, 0);
}
