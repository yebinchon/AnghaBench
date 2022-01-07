
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_31__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_36__ {int L; } ;
typedef TYPE_3__ jit_State ;
typedef int int64_t ;
struct TYPE_40__ {int metatable; } ;
struct TYPE_39__ {int nins; TYPE_5__* ir; TYPE_2__* snap; } ;
struct TYPE_38__ {scalar_t__ o; size_t op1; size_t op2; scalar_t__ r; int i; int t; } ;
struct TYPE_33__ {int lo; int hi; } ;
struct TYPE_37__ {TYPE_1__ u32; } ;
struct TYPE_35__ {scalar_t__ u64; } ;
struct TYPE_34__ {size_t ref; } ;
typedef TYPE_4__ TValue ;
typedef size_t SnapNo ;
typedef TYPE_5__ IRIns ;
typedef TYPE_6__ GCtrace ;
typedef TYPE_7__ GCtab ;
typedef int GCcdata ;
typedef int ExitState ;
typedef int CTypeID ;
typedef int CTState ;
typedef int CTSize ;
typedef int CTInfo ;
typedef int BloomFilter ;


 size_t IRFL_TAB_META ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_ASTORE ;
 scalar_t__ IR_CNEW ;
 scalar_t__ IR_CNEWI ;
 scalar_t__ IR_FREF ;
 scalar_t__ IR_FSTORE ;
 scalar_t__ IR_HIOP ;
 scalar_t__ IR_HSTORE ;
 scalar_t__ IR_KINT ;
 scalar_t__ IR_KINT64 ;
 scalar_t__ IR_KSLOT ;
 scalar_t__ IR_TDUP ;
 scalar_t__ IR_TNEW ;
 scalar_t__ IR_XSTORE ;
 scalar_t__ LJ_32 ;
 scalar_t__ LJ_64 ;
 scalar_t__ LJ_BE ;
 scalar_t__ LJ_LE ;
 scalar_t__ LJ_SOFTFP ;
 scalar_t__ RID_SINK ;
 scalar_t__ cdataptr (int *) ;
 int * ctype_cts (int ) ;
 TYPE_31__* ir_k64 (TYPE_5__*) ;
 int ir_ktab (TYPE_5__*) ;
 scalar_t__ irt_is64 (int ) ;
 scalar_t__ irt_isi16 (int ) ;
 scalar_t__ irt_isi8 (int ) ;
 scalar_t__ irt_isu16 (int ) ;
 scalar_t__ irt_isu8 (int ) ;
 int * lj_cdata_newx (int *,int ,int,int ) ;
 int lj_ctype_info (int *,int ,int*) ;
 int lj_ir_kvalue (int ,TYPE_4__*,TYPE_5__*) ;
 TYPE_7__* lj_tab_dup (int ,int ) ;
 TYPE_7__* lj_tab_new (int ,size_t,size_t) ;
 TYPE_4__* lj_tab_set (int ,TYPE_7__*,TYPE_4__*) ;
 int lua_assert (int) ;
 int obj2gco (int ) ;
 int setcdataV (int ,TYPE_4__*,int *) ;
 int setgcref (int ,int ) ;
 int settabV (int ,TYPE_4__*,TYPE_7__*) ;
 int snap_restoredata (TYPE_6__*,int *,size_t,int ,size_t,int *,int) ;
 int snap_restoreval (TYPE_3__*,TYPE_6__*,int *,size_t,int ,size_t,TYPE_4__*) ;
 scalar_t__ snap_sunk_store (TYPE_6__*,TYPE_5__*,TYPE_5__*) ;
 int tabV (TYPE_4__*) ;

__attribute__((used)) static void snap_unsink(jit_State *J, GCtrace *T, ExitState *ex,
   SnapNo snapno, BloomFilter rfilt,
   IRIns *ir, TValue *o)
{
  lua_assert(ir->o == IR_TNEW || ir->o == IR_TDUP ||
      ir->o == IR_CNEW || ir->o == IR_CNEWI);
  {
    IRIns *irs, *irlast;
    GCtab *t = ir->o == IR_TNEW ? lj_tab_new(J->L, ir->op1, ir->op2) :
      lj_tab_dup(J->L, ir_ktab(&T->ir[ir->op1]));
    settabV(J->L, o, t);
    irlast = &T->ir[T->snap[snapno].ref];
    for (irs = ir+1; irs < irlast; irs++)
      if (irs->r == RID_SINK && snap_sunk_store(T, ir, irs)) {
 IRIns *irk = &T->ir[irs->op1];
 TValue tmp, *val;
 lua_assert(irs->o == IR_ASTORE || irs->o == IR_HSTORE ||
     irs->o == IR_FSTORE);
 if (irk->o == IR_FREF) {
   lua_assert(irk->op2 == IRFL_TAB_META);
   snap_restoreval(J, T, ex, snapno, rfilt, irs->op2, &tmp);

   setgcref(t->metatable, obj2gco(tabV(&tmp)));
 } else {
   irk = &T->ir[irk->op2];
   if (irk->o == IR_KSLOT) irk = &T->ir[irk->op1];
   lj_ir_kvalue(J->L, &tmp, irk);
   val = lj_tab_set(J->L, t, &tmp);

   snap_restoreval(J, T, ex, snapno, rfilt, irs->op2, val);
   if (LJ_SOFTFP && irs+1 < T->ir + T->nins && (irs+1)->o == IR_HIOP) {
     snap_restoreval(J, T, ex, snapno, rfilt, (irs+1)->op2, &tmp);
     val->u32.hi = tmp.u32.lo;
   }
 }
      }
  }
}
