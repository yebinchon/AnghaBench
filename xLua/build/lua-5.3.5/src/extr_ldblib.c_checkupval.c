
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TFUNCTION ;
 int luaL_argcheck (int *,int ,int,char*) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int * lua_getupvalue (int *,int,int) ;

__attribute__((used)) static int checkupval (lua_State *L, int argf, int argnup) {
  int nup = (int)luaL_checkinteger(L, argnup);
  luaL_checktype(L, argf, LUA_TFUNCTION);
  luaL_argcheck(L, (lua_getupvalue(L, argf, nup) != ((void*)0)), argnup,
                   "invalid upvalue index");
  return nup;
}
