#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ lua_Number ;
typedef  scalar_t__ int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ int16_t ;
struct TYPE_9__ {int /*<<< orphan*/ * fpr; int /*<<< orphan*/ * gpr; scalar_t__* spill; } ;
struct TYPE_8__ {TYPE_1__* ir; } ;
struct TYPE_7__ {scalar_t__ o; scalar_t__ op2; size_t op1; int /*<<< orphan*/  t; scalar_t__ i; int /*<<< orphan*/  prev; } ;
typedef  int /*<<< orphan*/  SnapNo ;
typedef  int /*<<< orphan*/  RegSP ;
typedef  size_t Reg ;
typedef  size_t IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ GCtrace ;
typedef  TYPE_3__ ExitState ;
typedef  int CTSize ;
typedef  int /*<<< orphan*/  BloomFilter ;

/* Variables and functions */
 scalar_t__ IRCONV_NUM_INT ; 
 scalar_t__ IR_CONV ; 
 scalar_t__ IR_KINT64 ; 
 scalar_t__ IR_KNUM ; 
 scalar_t__ LJ_64 ; 
 scalar_t__ LJ_BE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t RID_MAX_GPR ; 
 size_t RID_MIN_FPR ; 
 size_t RID_MIN_GPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(GCtrace *T, ExitState *ex,
			     SnapNo snapno, BloomFilter rfilt,
			     IRRef ref, void *dst, CTSize sz)
{
  IRIns *ir = &T->ir[ref];
  RegSP rs = ir->prev;
  int32_t *src;
  uint64_t tmp;
  if (FUNC2(ref)) {
    if (ir->o == IR_KNUM || ir->o == IR_KINT64) {
      src = (int32_t *)&ir[1];
    } else if (sz == 8) {
      tmp = (uint64_t)(uint32_t)ir->i;
      src = (int32_t *)&tmp;
    } else {
      src = &ir->i;
    }
  } else {
    if (FUNC0(FUNC1(rfilt, ref)))
      rs = FUNC9(T, snapno, ref, rs);
    if (FUNC5(FUNC8(rs))) {
      src = &ex->spill[FUNC8(rs)];
      if (sz == 8 && !FUNC3(ir->t)) {
	tmp = (uint64_t)(uint32_t)*src;
	src = (int32_t *)&tmp;
      }
    } else {
      Reg r = FUNC7(rs);
      if (FUNC6(r)) {
	/* Note: this assumes CNEWI is never used for SOFTFP split numbers. */
	FUNC4(sz == 8 && ir->o == IR_CONV && ir->op2 == IRCONV_NUM_INT);
	FUNC10(T, ex, snapno, rfilt, ir->op1, dst, 4);
	*(lua_Number *)dst = (lua_Number)*(int32_t *)dst;
	return;
      }
      src = (int32_t *)&ex->gpr[r-RID_MIN_GPR];
#if !LJ_SOFTFP
      if (r >= RID_MAX_GPR) {
	src = (int32_t *)&ex->fpr[r-RID_MIN_FPR];
#if LJ_TARGET_PPC
	if (sz == 4) {  /* PPC FPRs are always doubles. */
	  *(float *)dst = (float)*(double *)src;
	  return;
	}
#else
	if (LJ_BE && sz == 4) src++;
#endif
      } else
#endif
      if (LJ_64 && LJ_BE && sz == 4) src++;
    }
  }
  FUNC4(sz == 1 || sz == 2 || sz == 4 || sz == 8);
  if (sz == 4) *(int32_t *)dst = *src;
  else if (sz == 8) *(int64_t *)dst = *(int64_t *)src;
  else if (sz == 1) *(int8_t *)dst = (int8_t)*src;
  else *(int16_t *)dst = (int16_t)*src;
}