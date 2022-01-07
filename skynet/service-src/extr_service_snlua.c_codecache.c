
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char* member_0; int * member_1; } ;
typedef TYPE_1__ luaL_Reg ;


 int * cleardummy ;
 int luaL_newlib (int *,TYPE_1__*) ;
 int lua_getglobal (int *,char*) ;
 int lua_setfield (int *,int,char*) ;

__attribute__((used)) static int
codecache(lua_State *L) {
 luaL_Reg l[] = {
  { "clear", cleardummy },
  { "mode", cleardummy },
  { ((void*)0), ((void*)0) },
 };
 luaL_newlib(L,l);
 lua_getglobal(L, "loadfile");
 lua_setfield(L, -2, "loadfile");
 return 1;
}
