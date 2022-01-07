
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int * source; scalar_t__ lastlinedefined; scalar_t__ linedefined; scalar_t__ sizelocvars; int * locvars; scalar_t__ maxstacksize; scalar_t__ is_vararg; scalar_t__ numparams; scalar_t__ sizeupvalues; int * upvalues; scalar_t__ sizelineinfo; int * lineinfo; scalar_t__ sizecode; int * cache; int * code; scalar_t__ sizep; int * p; scalar_t__ sizek; int * k; } ;
typedef TYPE_1__ Proto ;
typedef int GCObject ;


 int LUA_TPROTO ;
 TYPE_1__* gco2p (int *) ;
 int * luaC_newobj (int *,int ,int) ;

Proto *luaF_newproto (lua_State *L) {
  GCObject *o = luaC_newobj(L, LUA_TPROTO, sizeof(Proto));
  Proto *f = gco2p(o);
  f->k = ((void*)0);
  f->sizek = 0;
  f->p = ((void*)0);
  f->sizep = 0;
  f->code = ((void*)0);
  f->cache = ((void*)0);
  f->sizecode = 0;
  f->lineinfo = ((void*)0);
  f->sizelineinfo = 0;
  f->upvalues = ((void*)0);
  f->sizeupvalues = 0;
  f->numparams = 0;
  f->is_vararg = 0;
  f->maxstacksize = 0;
  f->locvars = ((void*)0);
  f->sizelocvars = 0;
  f->linedefined = 0;
  f->lastlinedefined = 0;
  f->source = ((void*)0);
  return f;
}
