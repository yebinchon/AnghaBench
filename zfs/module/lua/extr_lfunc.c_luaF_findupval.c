
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* next; TYPE_3__* prev; } ;
struct TYPE_16__ {TYPE_1__ l; int value; } ;
struct TYPE_17__ {TYPE_2__ u; int * v; int * next; int * openupval; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_18__ {TYPE_3__ uvhead; } ;
typedef TYPE_4__ global_State ;
typedef TYPE_3__ UpVal ;
struct TYPE_19__ {TYPE_3__ uv; } ;
typedef int * StkId ;
typedef int GCObject ;


 TYPE_4__* G (TYPE_3__*) ;
 int LUA_TUPVAL ;
 int changewhite (int *) ;
 TYPE_3__* gco2uv (int *) ;
 scalar_t__ isdead (TYPE_4__*,int *) ;
 scalar_t__ isold (int *) ;
 TYPE_9__* luaC_newobj (TYPE_3__*,int ,int,int **,int ) ;
 int lua_assert (int) ;
 int * obj2gco (TYPE_3__*) ;

UpVal *luaF_findupval (lua_State *L, StkId level) {
  global_State *g = G(L);
  GCObject **pp = &L->openupval;
  UpVal *p;
  UpVal *uv;
  while (*pp != ((void*)0) && (p = gco2uv(*pp))->v >= level) {
    GCObject *o = obj2gco(p);
    lua_assert(p->v != &p->u.value);
    lua_assert(!isold(o) || isold(obj2gco(L)));
    if (p->v == level) {
      if (isdead(g, o))
        changewhite(o);
      return p;
    }
    pp = &p->next;
  }

  uv = &luaC_newobj(L, LUA_TUPVAL, sizeof(UpVal), pp, 0)->uv;
  uv->v = level;
  uv->u.l.prev = &g->uvhead;
  uv->u.l.next = g->uvhead.u.l.next;
  uv->u.l.next->u.l.prev = uv;
  g->uvhead.u.l.next = uv;
  lua_assert(uv->u.l.next->u.l.prev == uv && uv->u.l.prev->u.l.next == uv);
  return uv;
}
