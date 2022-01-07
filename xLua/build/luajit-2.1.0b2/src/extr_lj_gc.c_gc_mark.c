
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;


struct TYPE_23__ {int gray; } ;
struct TYPE_24__ {TYPE_2__ gc; } ;
typedef TYPE_3__ global_State ;
struct TYPE_22__ {int gct; int gclist; } ;
struct TYPE_26__ {TYPE_1__ gch; } ;
struct TYPE_25__ {scalar_t__ closed; } ;
struct TYPE_21__ {int env; int metatable; } ;
typedef TYPE_4__ GCupval ;
typedef int GCtab ;
typedef TYPE_5__ GCobj ;


 int LJ_TCDATA ;
 int LJ_TFUNC ;
 int LJ_TPROTO ;
 int LJ_TSTR ;
 int LJ_TTAB ;
 int LJ_TTHREAD ;
 int LJ_TTRACE ;
 int LJ_TUDATA ;
 int LJ_TUPVAL ;
 scalar_t__ LJ_UNLIKELY (int) ;
 int gc_markobj (TYPE_3__*,int *) ;
 int gc_marktv (TYPE_3__*,int ) ;
 TYPE_15__* gco2ud (TYPE_5__*) ;
 TYPE_4__* gco2uv (TYPE_5__*) ;
 int gray2black (TYPE_5__*) ;
 int isdead (TYPE_3__*,TYPE_5__*) ;
 scalar_t__ iswhite (TYPE_5__*) ;
 int lua_assert (int) ;
 int setgcref (int ,TYPE_5__*) ;
 int setgcrefr (int ,int ) ;
 int * tabref (int ) ;
 int uvval (TYPE_4__*) ;
 int white2gray (TYPE_5__*) ;

__attribute__((used)) static void gc_mark(global_State *g, GCobj *o)
{
  int gct = o->gch.gct;
  lua_assert(iswhite(o) && !isdead(g, o));
  white2gray(o);
  if (LJ_UNLIKELY(gct == ~LJ_TUDATA)) {
    GCtab *mt = tabref(gco2ud(o)->metatable);
    gray2black(o);
    if (mt) gc_markobj(g, mt);
    gc_markobj(g, tabref(gco2ud(o)->env));
  } else if (LJ_UNLIKELY(gct == ~LJ_TUPVAL)) {
    GCupval *uv = gco2uv(o);
    gc_marktv(g, uvval(uv));
    if (uv->closed)
      gray2black(o);
  } else if (gct != ~LJ_TSTR && gct != ~LJ_TCDATA) {
    lua_assert(gct == ~LJ_TFUNC || gct == ~LJ_TTAB ||
        gct == ~LJ_TTHREAD || gct == ~LJ_TPROTO || gct == ~LJ_TTRACE);
    setgcrefr(o->gch.gclist, g->gc.gray);
    setgcref(g->gc.gray, o);
  }
}
