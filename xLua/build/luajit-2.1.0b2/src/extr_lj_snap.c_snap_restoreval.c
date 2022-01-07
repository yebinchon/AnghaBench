
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int lua_Number ;
struct TYPE_18__ {int L; } ;
typedef TYPE_1__ jit_State ;
typedef int int32_t ;
struct TYPE_22__ {void** gpr; int * fpr; int * spill; } ;
struct TYPE_21__ {TYPE_3__* ir; } ;
struct TYPE_20__ {scalar_t__ o; scalar_t__ op2; size_t op1; int prev; int t; } ;
struct TYPE_19__ {void* u64; } ;
typedef TYPE_2__ TValue ;
typedef int SnapNo ;
typedef int RegSP ;
typedef size_t Reg ;
typedef int IRType1 ;
typedef size_t IRRef ;
typedef TYPE_3__ IRIns ;
typedef TYPE_4__ GCtrace ;
typedef int GCobj ;
typedef scalar_t__ GCSize ;
typedef TYPE_5__ ExitState ;
typedef int BloomFilter ;


 scalar_t__ IRCONV_NUM_INT ;
 scalar_t__ IR_CONV ;
 scalar_t__ LJ_64 ;
 scalar_t__ LJ_DUALNUM ;
 int LJ_GC64 ;
 scalar_t__ LJ_UNLIKELY (int ) ;
 size_t RID_MIN_FPR ;
 size_t RID_MIN_GPR ;
 int bloomtest (int ,size_t) ;
 scalar_t__ intV (TYPE_2__*) ;
 scalar_t__ irref_isk (size_t) ;
 scalar_t__ irt_is64 (int ) ;
 scalar_t__ irt_isinteger (int ) ;
 scalar_t__ irt_islightud (int ) ;
 scalar_t__ irt_isnum (int ) ;
 scalar_t__ irt_ispri (int ) ;
 int irt_toitype (int ) ;
 int lj_ir_kvalue (int ,TYPE_2__*,TYPE_3__*) ;
 int lua_assert (int) ;
 scalar_t__ ra_hasspill (size_t) ;
 scalar_t__ ra_noreg (size_t) ;
 size_t regsp_reg (int ) ;
 size_t regsp_spill (int ) ;
 int setgcV (int ,TYPE_2__*,int *,int ) ;
 int setintV (TYPE_2__*,int ) ;
 int setnumV (TYPE_2__*,int ) ;
 int setpriV (TYPE_2__*,int ) ;
 int snap_renameref (TYPE_4__*,int ,size_t,int ) ;

__attribute__((used)) static void snap_restoreval(jit_State *J, GCtrace *T, ExitState *ex,
       SnapNo snapno, BloomFilter rfilt,
       IRRef ref, TValue *o)
{
  IRIns *ir = &T->ir[ref];
  IRType1 t = ir->t;
  RegSP rs = ir->prev;
  if (irref_isk(ref)) {
    lj_ir_kvalue(J->L, o, ir);
    return;
  }
  if (LJ_UNLIKELY(bloomtest(rfilt, ref)))
    rs = snap_renameref(T, snapno, ref, rs);
  lua_assert(!LJ_GC64);
  if (ra_hasspill(regsp_spill(rs))) {
    int32_t *sps = &ex->spill[regsp_spill(rs)];
    if (irt_isinteger(t)) {
      setintV(o, *sps);

    } else if (irt_isnum(t)) {
      o->u64 = *(uint64_t *)sps;

    } else if (LJ_64 && irt_islightud(t)) {

      o->u64 = *(uint64_t *)sps;
    } else {
      lua_assert(!irt_ispri(t));
      setgcV(J->L, o, (GCobj *)(uintptr_t)*(GCSize *)sps, irt_toitype(t));
    }
  } else {
    Reg r = regsp_reg(rs);
    if (ra_noreg(r)) {
      lua_assert(ir->o == IR_CONV && ir->op2 == IRCONV_NUM_INT);
      snap_restoreval(J, T, ex, snapno, rfilt, ir->op1, o);
      if (LJ_DUALNUM) setnumV(o, (lua_Number)intV(o));
      return;
    } else if (irt_isinteger(t)) {
      setintV(o, (int32_t)ex->gpr[r-RID_MIN_GPR]);

    } else if (irt_isnum(t)) {
      setnumV(o, ex->fpr[r-RID_MIN_FPR]);

    } else if (LJ_64 && irt_is64(t)) {

      o->u64 = ex->gpr[r-RID_MIN_GPR];
    } else if (irt_ispri(t)) {
      setpriV(o, irt_toitype(t));
    } else {
      setgcV(J->L, o, (GCobj *)ex->gpr[r-RID_MIN_GPR], irt_toitype(t));
    }
  }
}
