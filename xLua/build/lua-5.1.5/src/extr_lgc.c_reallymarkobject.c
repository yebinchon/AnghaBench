
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_26__ ;
typedef struct TYPE_32__ TYPE_24__ ;
typedef struct TYPE_31__ TYPE_22__ ;
typedef struct TYPE_30__ TYPE_20__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_18__ ;


struct TYPE_36__ {TYPE_6__* gray; } ;
typedef TYPE_4__ global_State ;
struct TYPE_34__ {int value; } ;
struct TYPE_37__ {TYPE_2__ u; int * v; } ;
typedef TYPE_5__ UpVal ;
typedef int Table ;
struct TYPE_29__ {int tt; } ;
struct TYPE_38__ {TYPE_1__ gch; } ;
struct TYPE_35__ {TYPE_6__* gclist; } ;
struct TYPE_33__ {TYPE_3__ c; } ;
struct TYPE_32__ {TYPE_6__* gclist; } ;
struct TYPE_31__ {TYPE_6__* gclist; } ;
struct TYPE_30__ {TYPE_6__* gclist; } ;
struct TYPE_28__ {int * env; int * metatable; } ;
typedef TYPE_6__ GCObject ;
 TYPE_26__* gco2cl (TYPE_6__*) ;
 TYPE_24__* gco2h (TYPE_6__*) ;
 TYPE_22__* gco2p (TYPE_6__*) ;
 TYPE_20__* gco2th (TYPE_6__*) ;
 TYPE_18__* gco2u (TYPE_6__*) ;
 TYPE_5__* gco2uv (TYPE_6__*) ;
 int gray2black (TYPE_6__*) ;
 int isdead (TYPE_4__*,TYPE_6__*) ;
 scalar_t__ iswhite (TYPE_6__*) ;
 int lua_assert (int) ;
 int markobject (TYPE_4__*,int *) ;
 int markvalue (TYPE_4__*,int *) ;
 int white2gray (TYPE_6__*) ;

__attribute__((used)) static void reallymarkobject (global_State *g, GCObject *o) {
  lua_assert(iswhite(o) && !isdead(g, o));
  white2gray(o);
  switch (o->gch.tt) {
    case 132: {
      return;
    }
    case 128: {
      Table *mt = gco2u(o)->metatable;
      gray2black(o);
      if (mt) markobject(g, mt);
      markobject(g, gco2u(o)->env);
      return;
    }
    case 129: {
      UpVal *uv = gco2uv(o);
      markvalue(g, uv->v);
      if (uv->v == &uv->u.value)
        gray2black(o);
      return;
    }
    case 134: {
      gco2cl(o)->c.gclist = g->gray;
      g->gray = o;
      break;
    }
    case 131: {
      gco2h(o)->gclist = g->gray;
      g->gray = o;
      break;
    }
    case 130: {
      gco2th(o)->gclist = g->gray;
      g->gray = o;
      break;
    }
    case 133: {
      gco2p(o)->gclist = g->gray;
      g->gray = o;
      break;
    }
    default: lua_assert(0);
  }
}
