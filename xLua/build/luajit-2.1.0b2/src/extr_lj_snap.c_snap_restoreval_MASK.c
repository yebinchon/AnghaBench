#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  lua_Number ;
struct TYPE_18__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_22__ {void** gpr; int /*<<< orphan*/ * fpr; int /*<<< orphan*/ * spill; } ;
struct TYPE_21__ {TYPE_3__* ir; } ;
struct TYPE_20__ {scalar_t__ o; scalar_t__ op2; size_t op1; int /*<<< orphan*/  prev; int /*<<< orphan*/  t; } ;
struct TYPE_19__ {void* u64; } ;
typedef  TYPE_2__ TValue ;
typedef  int /*<<< orphan*/  SnapNo ;
typedef  int /*<<< orphan*/  RegSP ;
typedef  size_t Reg ;
typedef  int /*<<< orphan*/  IRType1 ;
typedef  size_t IRRef ;
typedef  TYPE_3__ IRIns ;
typedef  TYPE_4__ GCtrace ;
typedef  int /*<<< orphan*/  GCobj ;
typedef  scalar_t__ GCSize ;
typedef  TYPE_5__ ExitState ;
typedef  int /*<<< orphan*/  BloomFilter ;

/* Variables and functions */
 scalar_t__ IRCONV_NUM_INT ; 
 scalar_t__ IR_CONV ; 
 scalar_t__ LJ_64 ; 
 scalar_t__ LJ_DUALNUM ; 
 int /*<<< orphan*/  LJ_GC64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t RID_MIN_FPR ; 
 size_t RID_MIN_GPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (size_t) ; 
 scalar_t__ FUNC13 (size_t) ; 
 size_t FUNC14 (int /*<<< orphan*/ ) ; 
 size_t FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC21(jit_State *J, GCtrace *T, ExitState *ex,
			    SnapNo snapno, BloomFilter rfilt,
			    IRRef ref, TValue *o)
{
  IRIns *ir = &T->ir[ref];
  IRType1 t = ir->t;
  RegSP rs = ir->prev;
  if (FUNC3(ref)) {  /* Restore constant slot. */
    FUNC10(J->L, o, ir);
    return;
  }
  if (FUNC0(FUNC1(rfilt, ref)))
    rs = FUNC20(T, snapno, ref, rs);
  FUNC11(!LJ_GC64);  /* TODO_GC64: handle 64 bit references. */
  if (FUNC12(FUNC15(rs))) {  /* Restore from spill slot. */
    int32_t *sps = &ex->spill[FUNC15(rs)];
    if (FUNC5(t)) {
      FUNC17(o, *sps);
#if !LJ_SOFTFP
    } else if (FUNC7(t)) {
      o->u64 = *(uint64_t *)sps;
#endif
    } else if (LJ_64 && FUNC6(t)) {
      /* 64 bit lightuserdata which may escape already has the tag bits. */
      o->u64 = *(uint64_t *)sps;
    } else {
      FUNC11(!FUNC8(t));  /* PRI refs never have a spill slot. */
      FUNC16(J->L, o, (GCobj *)(uintptr_t)*(GCSize *)sps, FUNC9(t));
    }
  } else {  /* Restore from register. */
    Reg r = FUNC14(rs);
    if (FUNC13(r)) {
      FUNC11(ir->o == IR_CONV && ir->op2 == IRCONV_NUM_INT);
      FUNC21(J, T, ex, snapno, rfilt, ir->op1, o);
      if (LJ_DUALNUM) FUNC18(o, (lua_Number)FUNC2(o));
      return;
    } else if (FUNC5(t)) {
      FUNC17(o, (int32_t)ex->gpr[r-RID_MIN_GPR]);
#if !LJ_SOFTFP
    } else if (FUNC7(t)) {
      FUNC18(o, ex->fpr[r-RID_MIN_FPR]);
#endif
    } else if (LJ_64 && FUNC4(t)) {
      /* 64 bit values that already have the tag bits. */
      o->u64 = ex->gpr[r-RID_MIN_GPR];
    } else if (FUNC8(t)) {
      FUNC19(o, FUNC9(t));
    } else {
      FUNC16(J->L, o, (GCobj *)ex->gpr[r-RID_MIN_GPR], FUNC9(t));
    }
  }
}