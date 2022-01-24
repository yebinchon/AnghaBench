#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int ptrdiff_t ;
struct TYPE_16__ {int /*<<< orphan*/  L; int /*<<< orphan*/  postproc; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_18__ {int /*<<< orphan*/  L; } ;
struct TYPE_17__ {int info; int size; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  scalar_t__ IRType ;
typedef  int /*<<< orphan*/  GCcdata ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_2__ CType ;
typedef  TYPE_3__ CTState ;
typedef  int CTInfo ;

/* Variables and functions */
 int CTF_BOOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTSIZE_PTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRT_CDATA ; 
 scalar_t__ IRT_FLOAT ; 
 scalar_t__ IRT_I64 ; 
 int /*<<< orphan*/  IRT_NUM ; 
 scalar_t__ IRT_PTR ; 
 scalar_t__ IRT_U32 ; 
 scalar_t__ IRT_U64 ; 
 int /*<<< orphan*/  IR_ADD ; 
 int /*<<< orphan*/  IR_CNEW ; 
 int /*<<< orphan*/  IR_CNEWI ; 
 int /*<<< orphan*/  IR_NE ; 
 int /*<<< orphan*/  IR_XLOAD ; 
 int /*<<< orphan*/  IR_XSTORE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  LJ_POST_FIXGUARD ; 
 int /*<<< orphan*/  LJ_TRERR_NYICONV ; 
 int /*<<< orphan*/  TREF_NIL ; 
 int /*<<< orphan*/  TREF_TRUE ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TRef FUNC21(jit_State *J, CType *s, CTypeID sid, TRef sp)
{
  CTState *cts = FUNC6(FUNC4(J));
  IRType t = FUNC5(cts, s);
  CTInfo sinfo = s->info;
  if (FUNC9(sinfo)) {
    TRef tr;
    if (t == IRT_CDATA)
      goto err_nyi;  /* NYI: copyval of >64 bit integers. */
    tr = FUNC14(FUNC1(IR_XLOAD, t), sp, 0);
    if (t == IRT_FLOAT || t == IRT_U32) {  /* Keep uint32_t/float as numbers. */
      return FUNC13(tr, IRT_NUM, t, 0);
    } else if (t == IRT_I64 || t == IRT_U64) {  /* Box 64 bit integer. */
      sp = tr;
      FUNC19(J);
    } else if ((sinfo & CTF_BOOL)) {
      /* Assume not equal to zero. Fixup and emit pending guard later. */
      FUNC18(J, FUNC3(IR_NE), tr, FUNC16(J, 0));
      J->postproc = LJ_POST_FIXGUARD;
      return TREF_TRUE;
    } else {
      return tr;
    }
  } else if (FUNC10(sinfo) || FUNC8(sinfo)) {
    sp = FUNC14(FUNC1(IR_XLOAD, t), sp, 0);  /* Box pointers and enums. */
  } else if (FUNC11(sinfo) || FUNC12(sinfo)) {
    cts->L = J->L;
    sid = FUNC15(cts, FUNC0(sid), CTSIZE_PTR);  /* Create ref. */
  } else if (FUNC7(sinfo)) {  /* Unbox/box complex. */
    ptrdiff_t esz = (ptrdiff_t)(s->size >> 1);
    TRef ptr, tr1, tr2, dp;
    dp = FUNC14(FUNC2(IR_CNEW, IRT_CDATA), FUNC16(J, sid), TREF_NIL);
    tr1 = FUNC14(FUNC1(IR_XLOAD, t), sp, 0);
    ptr = FUNC14(FUNC1(IR_ADD, IRT_PTR), sp, FUNC17(J, esz));
    tr2 = FUNC14(FUNC1(IR_XLOAD, t), ptr, 0);
    ptr = FUNC14(FUNC1(IR_ADD, IRT_PTR), dp, FUNC17(J, sizeof(GCcdata)));
    FUNC14(FUNC1(IR_XSTORE, t), ptr, tr1);
    ptr = FUNC14(FUNC1(IR_ADD, IRT_PTR), dp, FUNC17(J, sizeof(GCcdata)+esz));
    FUNC14(FUNC1(IR_XSTORE, t), ptr, tr2);
    return dp;
  } else {
    /* NYI: copyval of vectors. */
  err_nyi:
    FUNC20(J, LJ_TRERR_NYICONV);
  }
  /* Box pointer, ref, enum or 64 bit integer. */
  return FUNC14(FUNC2(IR_CNEWI, IRT_CDATA), FUNC16(J, sid), sp);
}