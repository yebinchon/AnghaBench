#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  postproc; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_11__ {scalar_t__ i; } ;
struct TYPE_10__ {int info; int size; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  int MSize ;
typedef  scalar_t__ MMS ;
typedef  scalar_t__ IRType ;
typedef  scalar_t__ IROp ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_2__ CType ;

/* Variables and functions */
 int CTF_FP ; 
 int CTF_UNSIGNED ; 
 int /*<<< orphan*/  CTID_INT64 ; 
 int /*<<< orphan*/  CTID_UINT64 ; 
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRCONV_ANY ; 
 int /*<<< orphan*/  IRCONV_SEXT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ IRT_CDATA ; 
 scalar_t__ IRT_FLOAT ; 
 scalar_t__ IRT_I64 ; 
 scalar_t__ IRT_INT ; 
 scalar_t__ IRT_NUM ; 
 scalar_t__ IRT_U32 ; 
 scalar_t__ IRT_U64 ; 
 scalar_t__ IR_ADD ; 
 scalar_t__ IR_CNEWI ; 
 scalar_t__ IR_EQ ; 
 scalar_t__ IR_LE ; 
 scalar_t__ IR_LT ; 
 scalar_t__ IR_ULT ; 
 int /*<<< orphan*/  LJ_POST_FIXGUARD ; 
 scalar_t__ MM_add ; 
 scalar_t__ MM_eq ; 
 scalar_t__ MM_lt ; 
 int /*<<< orphan*/  TREF_TRUE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static TRef FUNC12(jit_State *J, TRef *sp, CType **s, MMS mm)
{
  if (FUNC3(s[0]->info) && FUNC3(s[1]->info)) {
    IRType dt;
    CTypeID id;
    TRef tr;
    MSize i;
    IROp op;
    FUNC8(J);
    if (((s[0]->info & CTF_UNSIGNED) && s[0]->size == 8) ||
	((s[1]->info & CTF_UNSIGNED) && s[1]->size == 8)) {
      dt = IRT_U64; id = CTID_UINT64;
    } else {
      dt = IRT_I64; id = CTID_INT64;
      if (mm < MM_add &&
	  !((s[0]->info | s[1]->info) & CTF_FP) &&
	  s[0]->size == 4 && s[1]->size == 4) {  /* Try to narrow comparison. */
	if (!((s[0]->info ^ s[1]->info) & CTF_UNSIGNED) ||
	    (FUNC9(sp[1]) && FUNC0(FUNC10(sp[1]))->i >= 0)) {
	  dt = (s[0]->info & CTF_UNSIGNED) ? IRT_U32 : IRT_INT;
	  goto comp;
	} else if (FUNC9(sp[0]) && FUNC0(FUNC10(sp[0]))->i >= 0) {
	  dt = (s[1]->info & CTF_UNSIGNED) ? IRT_U32 : IRT_INT;
	  goto comp;
	}
      }
    }
    for (i = 0; i < 2; i++) {
      IRType st = FUNC11(sp[i]);
      if (st == IRT_NUM || st == IRT_FLOAT)
	sp[i] = FUNC4(sp[i], dt, st, IRCONV_ANY);
      else if (!(st == IRT_I64 || st == IRT_U64))
	sp[i] = FUNC4(sp[i], dt, IRT_INT,
			 (s[i]->info & CTF_UNSIGNED) ? 0 : IRCONV_SEXT);
    }
    if (mm < MM_add) {
    comp:
      /* Assume true comparison. Fixup and emit pending guard later. */
      if (mm == MM_eq) {
	op = IR_EQ;
      } else {
	op = mm == MM_lt ? IR_LT : IR_LE;
	if (dt == IRT_U32 || dt == IRT_U64)
	  op += (IR_ULT-IR_LT);
      }
      FUNC7(J, FUNC2(op, dt), sp[0], sp[1]);
      J->postproc = LJ_POST_FIXGUARD;
      return TREF_TRUE;
    } else {
      tr = FUNC5(FUNC1(mm+(int)IR_ADD-(int)MM_add, dt), sp[0], sp[1]);
    }
    return FUNC5(FUNC2(IR_CNEWI, IRT_CDATA), FUNC6(J, id), tr);
  }
  return 0;
}