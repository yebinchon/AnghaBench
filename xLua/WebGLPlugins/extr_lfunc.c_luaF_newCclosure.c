
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int nupvalues; } ;
typedef int GCObject ;
typedef TYPE_1__ CClosure ;


 int LUA_TCCL ;
 int cast_byte (int) ;
 TYPE_1__* gco2ccl (int *) ;
 int * luaC_newobj (int *,int ,int ) ;
 int sizeCclosure (int) ;

CClosure *luaF_newCclosure (lua_State *L, int n) {
  GCObject *o = luaC_newobj(L, LUA_TCCL, sizeCclosure(n));
  CClosure *c = gco2ccl(o);
  c->nupvalues = cast_byte(n);
  return c;
}
