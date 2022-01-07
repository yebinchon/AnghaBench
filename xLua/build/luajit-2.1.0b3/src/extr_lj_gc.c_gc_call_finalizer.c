
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_20__ {int * top; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_19__ {int threshold; } ;
struct TYPE_21__ {TYPE_2__ gc; } ;
typedef TYPE_4__ global_State ;
typedef int cTValue ;
struct TYPE_18__ {int gct; } ;
struct TYPE_22__ {TYPE_1__ gch; } ;
typedef int TValue ;
typedef TYPE_5__ GCobj ;
typedef int GCSize ;


 scalar_t__ LJ_FR2 ;
 int LJ_MAX_MEM ;
 int copyTV (TYPE_3__*,int ,int *) ;
 int hook_entergc (TYPE_4__*) ;
 int hook_restore (TYPE_4__*,int ) ;
 int hook_save (TYPE_4__*) ;
 int lj_err_throw (TYPE_3__*,int) ;
 int lj_trace_abort (TYPE_4__*) ;
 int lj_vm_pcall (TYPE_3__*,int *,scalar_t__,int) ;
 int setgcV (TYPE_3__*,int *,TYPE_5__*,int ) ;
 int setnilV (int ) ;

__attribute__((used)) static void gc_call_finalizer(global_State *g, lua_State *L,
         cTValue *mo, GCobj *o)
{

  uint8_t oldh = hook_save(g);
  GCSize oldt = g->gc.threshold;
  int errcode;
  TValue *top;
  lj_trace_abort(g);
  hook_entergc(g);
  g->gc.threshold = LJ_MAX_MEM;
  top = L->top;
  copyTV(L, top++, mo);
  if (LJ_FR2) setnilV(top++);
  setgcV(L, top, o, ~o->gch.gct);
  L->top = top+1;
  errcode = lj_vm_pcall(L, top, 1+0, -1);
  hook_restore(g, oldh);
  g->gc.threshold = oldt;
  if (errcode)
    lj_err_throw(L, errcode);
}
