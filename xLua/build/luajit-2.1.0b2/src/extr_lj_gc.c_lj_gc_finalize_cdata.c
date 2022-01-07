
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t ptrdiff_t ;
typedef int lua_State ;
typedef int global_State ;
struct TYPE_15__ {TYPE_3__* finalizer; } ;
struct TYPE_11__ {int marked; } ;
struct TYPE_14__ {TYPE_1__ gch; } ;
struct TYPE_13__ {scalar_t__ hmask; int metatable; int node; } ;
struct TYPE_12__ {int val; int key; } ;
typedef int TValue ;
typedef TYPE_2__ Node ;
typedef TYPE_3__ GCtab ;
typedef TYPE_4__ GCobj ;
typedef TYPE_5__ CTState ;


 int * G (int *) ;
 scalar_t__ LJ_GC_CDATA_FIN ;
 int copyTV (int *,int *,int *) ;
 TYPE_5__* ctype_ctsG (int *) ;
 TYPE_4__* gcV (int *) ;
 int gc_call_finalizer (int *,int *,int *,TYPE_4__*) ;
 int makewhite (int *,TYPE_4__*) ;
 TYPE_2__* noderef (int ) ;
 int setgcrefnull (int ) ;
 int setnilV (int *) ;
 scalar_t__ tviscdata (int *) ;
 int tvisnil (int *) ;

void lj_gc_finalize_cdata(lua_State *L)
{
  global_State *g = G(L);
  CTState *cts = ctype_ctsG(g);
  if (cts) {
    GCtab *t = cts->finalizer;
    Node *node = noderef(t->node);
    ptrdiff_t i;
    setgcrefnull(t->metatable);
    for (i = (ptrdiff_t)t->hmask; i >= 0; i--)
      if (!tvisnil(&node[i].val) && tviscdata(&node[i].key)) {
 GCobj *o = gcV(&node[i].key);
 TValue tmp;
 makewhite(g, o);
 o->gch.marked &= (uint8_t)~LJ_GC_CDATA_FIN;
 copyTV(L, &tmp, &node[i].val);
 setnilV(&node[i].val);
 gc_call_finalizer(g, L, &tmp, o);
      }
  }
}
