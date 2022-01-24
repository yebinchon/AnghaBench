#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  postproc; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_10__ {int /*<<< orphan*/  info; } ;
typedef  scalar_t__ TRef ;
typedef  scalar_t__ MMS ;
typedef  scalar_t__ IRType ;
typedef  int /*<<< orphan*/  IROp ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_2__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int CTSize ;

/* Variables and functions */
 int CTALIGN_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CTSIZE_PTR ; 
 int /*<<< orphan*/  CT_PTR ; 
 int /*<<< orphan*/  IRCONV_ANY ; 
 int /*<<< orphan*/  IRCONV_SEXT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ IRT_CDATA ; 
 scalar_t__ IRT_FLOAT ; 
 scalar_t__ IRT_I64 ; 
 scalar_t__ IRT_I8 ; 
 scalar_t__ IRT_INT ; 
 scalar_t__ IRT_INTP ; 
 scalar_t__ IRT_NUM ; 
 scalar_t__ IRT_PTR ; 
 int /*<<< orphan*/  IRT_U32 ; 
 scalar_t__ IRT_U64 ; 
 scalar_t__ IR_ADD ; 
 scalar_t__ IR_BSAR ; 
 int /*<<< orphan*/  IR_CNEWI ; 
 int /*<<< orphan*/  IR_EQ ; 
 scalar_t__ IR_MUL ; 
 scalar_t__ IR_SUB ; 
 int /*<<< orphan*/  IR_ULE ; 
 int /*<<< orphan*/  IR_ULT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  LJ_POST_FIXGUARD ; 
 scalar_t__ MM_add ; 
 scalar_t__ MM_eq ; 
 scalar_t__ MM_le ; 
 scalar_t__ MM_lt ; 
 scalar_t__ MM_sub ; 
 scalar_t__ TREF_TRUE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TRef FUNC19(jit_State *J, TRef *sp, CType **s, MMS mm)
{
  CTState *cts = FUNC5(FUNC3(J));
  CType *ctp = s[0];
  if (!(sp[0] && sp[1])) return 0;
  if (FUNC7(ctp->info) || FUNC8(ctp->info)) {
    if ((mm == MM_sub || mm == MM_eq || mm == MM_lt || mm == MM_le) &&
	(FUNC7(s[1]->info) || FUNC8(s[1]->info))) {
      if (mm == MM_sub) {  /* Pointer difference. */
	TRef tr;
	CTSize sz = FUNC12(cts, FUNC4(ctp->info));
	if (sz == 0 || (sz & (sz-1)) != 0)
	  return 0;  /* NYI: integer division. */
	tr = FUNC10(FUNC1(IR_SUB, IRT_INTP), sp[0], sp[1]);
	tr = FUNC10(FUNC1(IR_BSAR, IRT_INTP), tr, FUNC14(J, FUNC13(sz)));
#if LJ_64
	tr = emitconv(tr, IRT_NUM, IRT_INTP, 0);
#endif
	return tr;
      } else {  /* Pointer comparison (unsigned). */
	/* Assume true comparison. Fixup and emit pending guard later. */
	IROp op = mm == MM_eq ? IR_EQ : mm == MM_lt ? IR_ULT : IR_ULE;
	FUNC16(J, FUNC2(op, IRT_PTR), sp[0], sp[1]);
	J->postproc = LJ_POST_FIXGUARD;
	return TREF_TRUE;
      }
    }
    if (!((mm == MM_add || mm == MM_sub) && FUNC6(s[1]->info)))
      return 0;
  } else if (mm == MM_add && FUNC6(ctp->info) &&
	     (FUNC7(s[1]->info) || FUNC8(s[1]->info))) {
    TRef tr = sp[0]; sp[0] = sp[1]; sp[1] = tr;  /* Swap pointer and index. */
    ctp = s[1];
  } else {
    return 0;
  }
  {
    TRef tr = sp[1];
    IRType t = FUNC17(tr);
    CTSize sz = FUNC12(cts, FUNC4(ctp->info));
    CTypeID id;
#if LJ_64
    if (t == IRT_NUM || t == IRT_FLOAT)
      tr = emitconv(tr, IRT_INTP, t, IRCONV_ANY);
    else if (!(t == IRT_I64 || t == IRT_U64))
      tr = emitconv(tr, IRT_INTP, IRT_INT,
		    ((t - IRT_I8) & 1) ? 0 : IRCONV_SEXT);
#else
    if (!FUNC18(sp[1], IRT_I8, IRT_U32)) {
      tr = FUNC9(tr, IRT_INTP, t,
		    (t == IRT_NUM || t == IRT_FLOAT) ? IRCONV_ANY : 0);
    }
#endif
    tr = FUNC10(FUNC1(IR_MUL, IRT_INTP), tr, FUNC15(J, sz));
    tr = FUNC10(FUNC1(mm+(int)IR_ADD-(int)MM_add, IRT_PTR), sp[0], tr);
    id = FUNC11(cts, FUNC0(CT_PTR, CTALIGN_PTR|FUNC4(ctp->info)),
			 CTSIZE_PTR);
    return FUNC10(FUNC2(IR_CNEWI, IRT_CDATA), FUNC14(J, id), tr);
  }
}