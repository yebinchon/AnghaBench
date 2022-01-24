#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {int needsnap; int /*<<< orphan*/ * base; int /*<<< orphan*/  postproc; TYPE_7__* L; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_36__ {scalar_t__ base; } ;
struct TYPE_35__ {int /*<<< orphan*/  miscmap; } ;
struct TYPE_34__ {int info; int size; } ;
struct TYPE_33__ {int /*<<< orphan*/  ctypeid; } ;
struct TYPE_32__ {scalar_t__ nres; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TRef ;
typedef  TYPE_2__ RecordFFData ;
typedef  scalar_t__ IRType ;
typedef  TYPE_3__ GCcdata ;
typedef  TYPE_4__ CType ;
typedef  TYPE_5__ CTState ;

/* Variables and functions */
 scalar_t__ CTCC_CDECL ; 
 int CTF_VARARG ; 
 int /*<<< orphan*/  IRCONV_SEXT ; 
 int /*<<< orphan*/  IRFL_CDATA_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRT_CDATA ; 
 scalar_t__ IRT_FLOAT ; 
 scalar_t__ IRT_I16 ; 
 scalar_t__ IRT_I64 ; 
 scalar_t__ IRT_I8 ; 
 int /*<<< orphan*/  IRT_INT ; 
 scalar_t__ IRT_NIL ; 
 int /*<<< orphan*/  IRT_NUM ; 
 scalar_t__ IRT_P32 ; 
 scalar_t__ IRT_P64 ; 
 scalar_t__ IRT_PTR ; 
 scalar_t__ IRT_U16 ; 
 scalar_t__ IRT_U32 ; 
 scalar_t__ IRT_U64 ; 
 scalar_t__ IRT_U8 ; 
 int /*<<< orphan*/  IR_CALLXS ; 
 int /*<<< orphan*/  IR_CARG ; 
 int /*<<< orphan*/  IR_CNEWI ; 
 int /*<<< orphan*/  IR_FLOAD ; 
 int /*<<< orphan*/  IR_NE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ LJ_64 ; 
 int /*<<< orphan*/  LJ_POST_FIXGUARDSNAP ; 
 int /*<<< orphan*/  LJ_TRERR_BLACKL ; 
 int /*<<< orphan*/  LJ_TRERR_NYICALL ; 
 int /*<<< orphan*/  TREF_NIL ; 
 int /*<<< orphan*/  TREF_TRUE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ FUNC18 (int) ; 
 TYPE_4__* FUNC19 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC20 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC33(jit_State *J, RecordFFData *rd, GCcdata *cd)
{
  CTState *cts = FUNC12(FUNC3(J));
  CType *ct = FUNC19(cts, cd->ctypeid);
  IRType tp = IRT_PTR;
  if (FUNC17(ct->info)) {
    tp = (LJ_64 && ct->size == 8) ? IRT_P64 : IRT_P32;
    ct = FUNC20(cts, ct);
  }
  if (FUNC15(ct->info)) {
    TRef func = FUNC23(FUNC0(IR_FLOAD, tp), J->base[0], IRFL_CDATA_PTR);
    CType *ctr = FUNC20(cts, ct);
    IRType t = FUNC8(cts, ctr);
    TRef tr;
    TValue tv;
    /* Check for blacklisted C functions that might call a callback. */
    FUNC31(&tv,
		FUNC5(FUNC6(cd), (LJ_64 && tp == IRT_P64) ? 8 : 4));
    if (FUNC32(FUNC29(J->L, cts->miscmap, &tv)))
      FUNC30(J, LJ_TRERR_BLACKL);
    if (FUNC18(ctr->info)) {
      t = IRT_NIL;
      rd->nres = 0;
    } else if (!(FUNC16(ctr->info) || FUNC17(ctr->info) ||
		 FUNC14(ctr->info)) || t == IRT_CDATA) {
      FUNC30(J, LJ_TRERR_NYICALL);
    }
    if ((ct->info & CTF_VARARG)
#if LJ_TARGET_X86
	|| ctype_cconv(ct->info) != CTCC_CDECL
#endif
	)
      func = FUNC23(FUNC0(IR_CARG, IRT_NIL), func,
		    FUNC26(J, FUNC21(cts, ct)));
    tr = FUNC23(FUNC0(IR_CALLXS, t), FUNC7(J, rd, cts, ct), func);
    if (FUNC13(ctr->info)) {
      if (FUNC24(J->L->base-1) && FUNC4(FUNC25(J->L->base-1)[-1]) == 1) {
	/* Don't check result if ignored. */
	tr = TREF_NIL;
      } else {
	FUNC9(J);
#if LJ_TARGET_X86ORX64
	/* Note: only the x86/x64 backend supports U8 and only for EQ(tr, 0). */
	lj_ir_set(J, IRTG(IR_NE, IRT_U8), tr, lj_ir_kint(J, 0));
#else
	FUNC27(J, FUNC2(IR_NE), tr, FUNC26(J, 0));
#endif
	J->postproc = LJ_POST_FIXGUARDSNAP;
	tr = TREF_TRUE;
      }
    } else if (t == IRT_PTR || (LJ_64 && t == IRT_P32) ||
	       t == IRT_I64 || t == IRT_U64 || FUNC14(ctr->info)) {
      TRef trid = FUNC26(J, FUNC11(ct->info));
      tr = FUNC23(FUNC1(IR_CNEWI, IRT_CDATA), trid, tr);
      if (t == IRT_I64 || t == IRT_U64) FUNC28(J);
    } else if (t == IRT_FLOAT || t == IRT_U32) {
      tr = FUNC22(tr, IRT_NUM, t, 0);
    } else if (t == IRT_I8 || t == IRT_I16) {
      tr = FUNC22(tr, IRT_INT, t, IRCONV_SEXT);
    } else if (t == IRT_U8 || t == IRT_U16) {
      tr = FUNC22(tr, IRT_INT, t, 0);
    }
    J->base[0] = tr;
    J->needsnap = 1;
    return 1;
  }
  return 0;
}