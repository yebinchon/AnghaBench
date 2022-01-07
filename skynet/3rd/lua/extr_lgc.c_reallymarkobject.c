
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_15__ ;


struct TYPE_24__ {int gray; int mainthread; int GCmemtrav; } ;
typedef TYPE_2__ global_State ;
struct TYPE_26__ {int metatable; } ;
struct TYPE_25__ {int tt; } ;
struct TYPE_23__ {int lnglen; } ;
struct TYPE_22__ {TYPE_1__ u; int shrlen; } ;
typedef int TValue ;
typedef TYPE_3__ GCObject ;
 int gco2ccl (TYPE_3__*) ;
 int gco2lcl (TYPE_3__*) ;
 int gco2p (TYPE_3__*) ;
 int gco2t (TYPE_3__*) ;
 int gco2th (TYPE_3__*) ;
 TYPE_15__* gco2ts (TYPE_3__*) ;
 TYPE_5__* gco2u (TYPE_3__*) ;
 TYPE_3__* gcvalue (int *) ;
 int getuservalue (int ,TYPE_5__*,int *) ;
 int gray2black (TYPE_3__*) ;
 scalar_t__ isshared (TYPE_3__*) ;
 int linkgclist (int ,int ) ;
 int lua_assert (int ) ;
 int markobjectN (TYPE_2__*,int ) ;
 int sizelstring (int ) ;
 int sizeudata (TYPE_5__*) ;
 int valiswhite (int *) ;
 int white2gray (TYPE_3__*) ;

__attribute__((used)) static void reallymarkobject (global_State *g, GCObject *o) {
 reentry:
  if (isshared(o))
    return;
  white2gray(o);
  switch (o->tt) {
    case 131: {
      gray2black(o);
      g->GCmemtrav += sizelstring(gco2ts(o)->shrlen);
      break;
    }
    case 133: {
      gray2black(o);
      g->GCmemtrav += sizelstring(gco2ts(o)->u.lnglen);
      break;
    }
    case 128: {
      TValue uvalue;
      markobjectN(g, gco2u(o)->metatable);
      gray2black(o);
      g->GCmemtrav += sizeudata(gco2u(o));
      getuservalue(g->mainthread, gco2u(o), &uvalue);
      if (valiswhite(&uvalue)) {
        o = gcvalue(&uvalue);
        goto reentry;
      }
      break;
    }
    case 134: {
      linkgclist(gco2lcl(o), g->gray);
      break;
    }
    case 135: {
      linkgclist(gco2ccl(o), g->gray);
      break;
    }
    case 130: {
      linkgclist(gco2t(o), g->gray);
      break;
    }
    case 129: {
      linkgclist(gco2th(o), g->gray);
      break;
    }
    case 132: {
      linkgclist(gco2p(o), g->gray);
      break;
    }
    default: lua_assert(0); break;
  }
}
