
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int func; int * name; } ;
typedef TYPE_1__ luaL_Reg ;


 int luaL_checkstack (int *,int,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushstring (int *,int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_settable (int *,int) ;

void luaL_setfuncs (lua_State *L, const luaL_Reg *l, int nup) {
  luaL_checkstack(L, nup+1, "too many upvalues");
  for (; l->name != ((void*)0); l++) {
    int i;
    lua_pushstring(L, l->name);
    for (i = 0; i < nup; i++)
      lua_pushvalue(L, -(nup + 1));
    lua_pushcclosure(L, l->func, nup);
    lua_settable(L, -(nup + 3));
  }
  lua_pop(L, nup);
}
