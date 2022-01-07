
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int func; int * name; } ;
typedef TYPE_1__ luaL_Reg ;


 int luaL_checkstack (int *,int,char*) ;
 int luaL_setfuncs (int *,TYPE_1__ const*,int) ;
 int lua_pop (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushstring (int *,int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_settable (int *,int) ;

void luaT_setfuncs(lua_State *L, const luaL_Reg *l, int nup)
{
  luaL_setfuncs(L, l, nup);

}
