
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int L; int * miscmap; } ;
typedef scalar_t__ MSize ;
typedef int GCtab ;
typedef int GCfunc ;
typedef int CType ;
typedef TYPE_1__ CTState ;


 int * callback_checkfunc (TYPE_1__*,int *) ;
 void* callback_slot2ptr (TYPE_1__*,scalar_t__) ;
 scalar_t__ callback_slot_new (TYPE_1__*,int *) ;
 int lj_gc_anybarriert (int ,int *) ;
 int lj_tab_setint (int ,int *,int ) ;
 int setfuncV (int ,int ,int *) ;

void *lj_ccallback_new(CTState *cts, CType *ct, GCfunc *fn)
{
  ct = callback_checkfunc(cts, ct);
  if (ct) {
    MSize slot = callback_slot_new(cts, ct);
    GCtab *t = cts->miscmap;
    setfuncV(cts->L, lj_tab_setint(cts->L, t, (int32_t)slot), fn);
    lj_gc_anybarriert(cts->L, t);
    return callback_slot2ptr(cts, slot);
  }
  return ((void*)0);
}
