
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ lua_Number ;
typedef scalar_t__ int8_t ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_9__ {int * fpr; int * gpr; scalar_t__* spill; } ;
struct TYPE_8__ {TYPE_1__* ir; } ;
struct TYPE_7__ {scalar_t__ o; scalar_t__ op2; size_t op1; int t; scalar_t__ i; int prev; } ;
typedef int SnapNo ;
typedef int RegSP ;
typedef size_t Reg ;
typedef size_t IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ GCtrace ;
typedef TYPE_3__ ExitState ;
typedef int CTSize ;
typedef int BloomFilter ;


 scalar_t__ IRCONV_NUM_INT ;
 scalar_t__ IR_CONV ;
 scalar_t__ IR_KINT64 ;
 scalar_t__ IR_KNUM ;
 scalar_t__ LJ_64 ;
 scalar_t__ LJ_BE ;
 scalar_t__ LJ_UNLIKELY (int ) ;
 size_t RID_MAX_GPR ;
 size_t RID_MIN_FPR ;
 size_t RID_MIN_GPR ;
 int bloomtest (int ,size_t) ;
 scalar_t__ irref_isk (size_t) ;
 int irt_is64 (int ) ;
 int lua_assert (int) ;
 scalar_t__ ra_hasspill (size_t) ;
 scalar_t__ ra_noreg (size_t) ;
 size_t regsp_reg (int ) ;
 size_t regsp_spill (int ) ;
 int snap_renameref (TYPE_2__*,int ,size_t,int ) ;

__attribute__((used)) static void snap_restoredata(GCtrace *T, ExitState *ex,
        SnapNo snapno, BloomFilter rfilt,
        IRRef ref, void *dst, CTSize sz)
{
  IRIns *ir = &T->ir[ref];
  RegSP rs = ir->prev;
  int32_t *src;
  uint64_t tmp;
  if (irref_isk(ref)) {
    if (ir->o == IR_KNUM || ir->o == IR_KINT64) {
      src = (int32_t *)&ir[1];
    } else if (sz == 8) {
      tmp = (uint64_t)(uint32_t)ir->i;
      src = (int32_t *)&tmp;
    } else {
      src = &ir->i;
    }
  } else {
    if (LJ_UNLIKELY(bloomtest(rfilt, ref)))
      rs = snap_renameref(T, snapno, ref, rs);
    if (ra_hasspill(regsp_spill(rs))) {
      src = &ex->spill[regsp_spill(rs)];
      if (sz == 8 && !irt_is64(ir->t)) {
 tmp = (uint64_t)(uint32_t)*src;
 src = (int32_t *)&tmp;
      }
    } else {
      Reg r = regsp_reg(rs);
      if (ra_noreg(r)) {

 lua_assert(sz == 8 && ir->o == IR_CONV && ir->op2 == IRCONV_NUM_INT);
 snap_restoredata(T, ex, snapno, rfilt, ir->op1, dst, 4);
 *(lua_Number *)dst = (lua_Number)*(int32_t *)dst;
 return;
      }
      src = (int32_t *)&ex->gpr[r-RID_MIN_GPR];

      if (r >= RID_MAX_GPR) {
 src = (int32_t *)&ex->fpr[r-RID_MIN_FPR];






 if (LJ_BE && sz == 4) src++;

      } else

      if (LJ_64 && LJ_BE && sz == 4) src++;
    }
  }
  lua_assert(sz == 1 || sz == 2 || sz == 4 || sz == 8);
  if (sz == 4) *(int32_t *)dst = *src;
  else if (sz == 8) *(int64_t *)dst = *(int64_t *)src;
  else if (sz == 1) *(int8_t *)dst = (int8_t)*src;
  else *(int16_t *)dst = (int16_t)*src;
}
