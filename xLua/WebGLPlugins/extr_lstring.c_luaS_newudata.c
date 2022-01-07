
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {size_t len; int * metatable; } ;
typedef TYPE_1__ Udata ;
typedef int GCObject ;


 int LUA_TUSERDATA ;
 int MAX_SIZE ;
 TYPE_1__* gco2u (int *) ;
 int * luaC_newobj (int *,int ,int ) ;
 int luaM_toobig (int *) ;
 int luaO_nilobject ;
 int setuservalue (int *,TYPE_1__*,int ) ;
 int sizeludata (size_t) ;

Udata *luaS_newudata (lua_State *L, size_t s) {
  Udata *u;
  GCObject *o;
  if (s > MAX_SIZE - sizeof(Udata))
    luaM_toobig(L);
  o = luaC_newobj(L, LUA_TUSERDATA, sizeludata(s));
  u = gco2u(o);
  u->len = s;
  u->metatable = ((void*)0);
  setuservalue(L, u, luaO_nilobject);
  return u;
}
