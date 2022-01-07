
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


struct TYPE_33__ {TYPE_6__* gclist; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ lu_mem ;
struct TYPE_34__ {int GCmemtrav; TYPE_6__* gray; int grayagain; } ;
typedef TYPE_2__ global_State ;
struct TYPE_35__ {TYPE_6__* gclist; } ;
typedef TYPE_3__ Table ;
struct TYPE_39__ {TYPE_6__* gclist; } ;
struct TYPE_38__ {int tt; } ;
struct TYPE_37__ {TYPE_6__* gclist; } ;
struct TYPE_36__ {TYPE_6__* gclist; } ;
typedef TYPE_4__ Proto ;
typedef TYPE_5__ LClosure ;
typedef TYPE_6__ GCObject ;
typedef TYPE_7__ CClosure ;







 int black2gray (TYPE_6__*) ;
 TYPE_7__* gco2ccl (TYPE_6__*) ;
 TYPE_5__* gco2lcl (TYPE_6__*) ;
 TYPE_4__* gco2p (TYPE_6__*) ;
 TYPE_3__* gco2t (TYPE_6__*) ;
 TYPE_1__* gco2th (TYPE_6__*) ;
 int gray2black (TYPE_6__*) ;
 int isgray (TYPE_6__*) ;
 int linkgclist (TYPE_1__*,int ) ;
 int lua_assert (int ) ;
 scalar_t__ traverseCclosure (TYPE_2__*,TYPE_7__*) ;
 scalar_t__ traverseLclosure (TYPE_2__*,TYPE_5__*) ;
 scalar_t__ traverseproto (TYPE_2__*,TYPE_4__*) ;
 scalar_t__ traversetable (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ traversethread (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void propagatemark (global_State *g) {
  lu_mem size;
  GCObject *o = g->gray;
  lua_assert(isgray(o));
  gray2black(o);
  switch (o->tt) {
    case 129: {
      Table *h = gco2t(o);
      g->gray = h->gclist;
      size = traversetable(g, h);
      break;
    }
    case 131: {
      LClosure *cl = gco2lcl(o);
      g->gray = cl->gclist;
      size = traverseLclosure(g, cl);
      break;
    }
    case 132: {
      CClosure *cl = gco2ccl(o);
      g->gray = cl->gclist;
      size = traverseCclosure(g, cl);
      break;
    }
    case 128: {
      lua_State *th = gco2th(o);
      g->gray = th->gclist;
      linkgclist(th, g->grayagain);
      black2gray(o);
      size = traversethread(g, th);
      break;
    }
    case 130: {
      Proto *p = gco2p(o);
      g->gray = p->gclist;
      size = traverseproto(g, p);
      break;
    }
    default: lua_assert(0); return;
  }
  g->GCmemtrav += size;
}
