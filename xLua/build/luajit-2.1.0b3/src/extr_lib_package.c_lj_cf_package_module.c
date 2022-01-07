
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ base; scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;


 int LJ_52 ;
 int dooptions (TYPE_1__*,int) ;
 char* luaL_checkstring (TYPE_1__*,int) ;
 int luaL_pushmodule (TYPE_1__*,char const*,int) ;
 int lua_getfield (TYPE_1__*,int,char*) ;
 int lua_isnil (TYPE_1__*,int) ;
 int lua_pop (TYPE_1__*,int) ;
 int lua_pushvalue (TYPE_1__*,int) ;
 int modinit (TYPE_1__*,char const*) ;
 int setfenv (TYPE_1__*) ;

__attribute__((used)) static int lj_cf_package_module(lua_State *L)
{
  const char *modname = luaL_checkstring(L, 1);
  int lastarg = (int)(L->top - L->base);
  luaL_pushmodule(L, modname, 1);
  lua_getfield(L, -1, "_NAME");
  if (!lua_isnil(L, -1)) {
    lua_pop(L, 1);
  } else {
    lua_pop(L, 1);
    modinit(L, modname);
  }
  lua_pushvalue(L, -1);
  setfenv(L);
  dooptions(L, lastarg);
  return LJ_52;
}
