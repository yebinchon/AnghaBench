
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_19__ ;
typedef struct TYPE_22__ TYPE_12__ ;


typedef int uint8_t ;
typedef int lua_State ;
struct TYPE_24__ {scalar_t__ nocdatafin; int root; int mmudata; } ;
struct TYPE_26__ {TYPE_1__ gc; int jit_base; } ;
typedef TYPE_3__ global_State ;
typedef int cTValue ;
struct TYPE_28__ {int nextgc; } ;
struct TYPE_25__ {int nextgc; int marked; int gct; } ;
struct TYPE_27__ {TYPE_2__ gch; } ;
struct TYPE_23__ {int finalizer; } ;
struct TYPE_22__ {int metatable; } ;
typedef int TValue ;
typedef TYPE_4__ GCobj ;


 TYPE_3__* G (int *) ;
 scalar_t__ LJ_GC_CDATA_FIN ;
 int LJ_TCDATA ;
 int MM_gc ;
 int copyTV (int *,int *,int *) ;
 TYPE_19__* ctype_ctsG (TYPE_3__*) ;
 int gc_call_finalizer (TYPE_3__*,int *,int *,TYPE_4__*) ;
 TYPE_4__* gcnext (TYPE_4__*) ;
 int gco2cd (TYPE_4__*) ;
 TYPE_12__* gco2ud (TYPE_4__*) ;
 TYPE_4__* gcref (int ) ;
 int * lj_meta_fastg (TYPE_3__*,int ,int ) ;
 int * lj_tab_set (int *,int ,int *) ;
 int lua_assert (int ) ;
 TYPE_8__* mainthread (TYPE_3__*) ;
 int makewhite (TYPE_3__*,TYPE_4__*) ;
 int setcdataV (int *,int *,int ) ;
 int setgcref (int ,TYPE_4__*) ;
 int setgcrefnull (int ) ;
 int setgcrefr (int ,int ) ;
 int setnilV (int *) ;
 int tabref (int ) ;
 int tvisnil (int *) ;
 int * tvref (int ) ;

__attribute__((used)) static void gc_finalize(lua_State *L)
{
  global_State *g = G(L);
  GCobj *o = gcnext(gcref(g->gc.mmudata));
  cTValue *mo;
  lua_assert(tvref(g->jit_base) == ((void*)0));

  if (o == gcref(g->gc.mmudata))
    setgcrefnull(g->gc.mmudata);
  else
    setgcrefr(gcref(g->gc.mmudata)->gch.nextgc, o->gch.nextgc);
  setgcrefr(o->gch.nextgc, mainthread(g)->nextgc);
  setgcref(mainthread(g)->nextgc, o);
  makewhite(g, o);

  mo = lj_meta_fastg(g, tabref(gco2ud(o)->metatable), MM_gc);
  if (mo)
    gc_call_finalizer(g, L, mo, o);
}
