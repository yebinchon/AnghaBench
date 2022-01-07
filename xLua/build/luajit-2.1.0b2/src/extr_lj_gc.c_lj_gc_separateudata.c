
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int mmudata; } ;
struct TYPE_19__ {TYPE_2__ gc; } ;
typedef TYPE_3__ global_State ;
struct TYPE_22__ {int nextgc; } ;
struct TYPE_21__ {int metatable; } ;
struct TYPE_17__ {int nextgc; } ;
struct TYPE_20__ {TYPE_1__ gch; } ;
typedef TYPE_4__ GCobj ;
typedef int GCRef ;


 int MM_gc ;
 TYPE_5__* gco2ud (TYPE_4__*) ;
 TYPE_4__* gcref (int ) ;
 scalar_t__ isfinalized (TYPE_5__*) ;
 scalar_t__ iswhite (TYPE_4__*) ;
 int lj_meta_fastg (TYPE_3__*,int ,int ) ;
 TYPE_8__* mainthread (TYPE_3__*) ;
 int markfinalized (TYPE_4__*) ;
 int setgcref (int ,TYPE_4__*) ;
 int setgcrefr (int ,int ) ;
 scalar_t__ sizeudata (TYPE_5__*) ;
 int tabref (int ) ;

size_t lj_gc_separateudata(global_State *g, int all)
{
  size_t m = 0;
  GCRef *p = &mainthread(g)->nextgc;
  GCobj *o;
  while ((o = gcref(*p)) != ((void*)0)) {
    if (!(iswhite(o) || all) || isfinalized(gco2ud(o))) {
      p = &o->gch.nextgc;
    } else if (!lj_meta_fastg(g, tabref(gco2ud(o)->metatable), MM_gc)) {
      markfinalized(o);
      p = &o->gch.nextgc;
    } else {
      m += sizeudata(gco2ud(o));
      markfinalized(o);
      *p = o->gch.nextgc;
      if (gcref(g->gc.mmudata)) {
 GCobj *root = gcref(g->gc.mmudata);
 setgcrefr(o->gch.nextgc, root->gch.nextgc);
 setgcref(root->gch.nextgc, o);
 setgcref(g->gc.mmudata, o);
      } else {
 setgcref(o->gch.nextgc, o);
 setgcref(g->gc.mmudata, o);
      }
    }
  }
  return m;
}
