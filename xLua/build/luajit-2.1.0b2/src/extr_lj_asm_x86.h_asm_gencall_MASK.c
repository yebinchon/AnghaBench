#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int32_t ;
struct TYPE_27__ {scalar_t__ hi; scalar_t__ lo; } ;
struct TYPE_31__ {TYPE_1__ u32; } ;
struct TYPE_30__ {int* mcp; int /*<<< orphan*/  freeset; } ;
struct TYPE_29__ {int flags; scalar_t__ func; } ;
struct TYPE_28__ {scalar_t__ o; int i; int /*<<< orphan*/  t; int /*<<< orphan*/  r; } ;
struct TYPE_26__ {int /*<<< orphan*/  u64; } ;
typedef  int Reg ;
typedef  int MCode ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ CCallInfo ;
typedef  TYPE_4__ ASMState ;

/* Variables and functions */
 scalar_t__ ASMREF_TMP1 ; 
 int CCI_CC_CDECL ; 
 int CCI_CC_FASTCALL ; 
 int CCI_CC_MASK ; 
 int CCI_CC_THISCALL ; 
 int CCI_VARARG ; 
 int FUNC0 (TYPE_3__ const*) ; 
 TYPE_2__* FUNC1 (scalar_t__) ; 
 scalar_t__ IR_KINT64 ; 
 scalar_t__ LJ_32 ; 
 void* REGARG_FIRSTFPR ; 
 int REGARG_GPRS ; 
 int REGARG_LASTFPR ; 
 int REX_64 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int RID_EAX ; 
 int /*<<< orphan*/  RID_ESP ; 
 int RID_MAX_GPR ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int STACKARG_OFS ; 
 int XI_MOVrib ; 
 int /*<<< orphan*/  XO_MOVDto ; 
 int /*<<< orphan*/  XO_MOVSDto ; 
 int /*<<< orphan*/  XO_MOVSSto ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_10__* FUNC12 (TYPE_2__*) ; 
 TYPE_8__* FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC24(ASMState *as, const CCallInfo *ci, IRRef *args)
{
  uint32_t n, nargs = FUNC0(ci);
  int32_t ofs = STACKARG_OFS;
#if LJ_64
  uint32_t gprs = REGARG_GPRS;
  Reg fpr = REGARG_FIRSTFPR;
#if !LJ_ABI_WIN
  MCode *patchnfpr = NULL;
#endif
#else
  uint32_t gprs = 0;
  if ((ci->flags & CCI_CC_MASK) != CCI_CC_CDECL) {
    if ((ci->flags & CCI_CC_MASK) == CCI_CC_THISCALL)
      gprs = (REGARG_GPRS & 31);
    else if ((ci->flags & CCI_CC_MASK) == CCI_CC_FASTCALL)
      gprs = REGARG_GPRS;
  }
#endif
  if ((void *)ci->func)
    FUNC4(as, ci->func);
#if LJ_64
  if ((ci->flags & CCI_VARARG)) {  /* Special handling for vararg calls. */
#if LJ_ABI_WIN
    for (n = 0; n < 4 && n < nargs; n++) {
      IRIns *ir = IR(args[n]);
      if (irt_isfp(ir->t))  /* Duplicate FPRs in GPRs. */
	emit_rr(as, XO_MOVDto, (irt_isnum(ir->t) ? REX_64 : 0) | (fpr+n),
		((gprs >> (n*5)) & 31));  /* Either MOVD or MOVQ. */
    }
#else
    patchnfpr = --as->mcp;  /* Indicate number of used FPRs in register al. */
    *--as->mcp = XI_MOVrib | RID_EAX;
#endif
  }
#endif
  for (n = 0; n < nargs; n++) {  /* Setup args. */
    IRRef ref = args[n];
    IRIns *ir = FUNC1(ref);
    Reg r;
#if LJ_64 && LJ_ABI_WIN
    /* Windows/x64 argument registers are strictly positional. */
    r = irt_isfp(ir->t) ? (fpr <= REGARG_LASTFPR ? fpr : 0) : (gprs & 31);
    fpr++; gprs >>= 5;
#elif LJ_64
    /* POSIX/x64 argument registers are used in order of appearance. */
    if (irt_isfp(ir->t)) {
      r = fpr <= REGARG_LASTFPR ? fpr++ : 0;
    } else {
      r = gprs & 31; gprs >>= 5;
    }
#else
    if (ref && FUNC16(ir->t)) {
      r = 0;
    } else {
      r = gprs & 31; gprs >>= 5;
      if (!ref) continue;
    }
#endif
    if (r) {  /* Argument is in a register. */
      if (r < RID_MAX_GPR && ref < ASMREF_TMP1) {
#if LJ_64
	if (ir->o == IR_KINT64)
	  emit_loadu64(as, r, ir_kint64(ir)->u64);
	else
#endif
	  FUNC5(as, r, ir->i);
      } else {
	FUNC18(FUNC23(as->freeset, r));  /* Must have been evicted. */
	if (FUNC21(ir->r)) {
	  FUNC22(as, ir->r);
	  FUNC8(as, ir, r, ir->r);
	} else {
	  FUNC20(as, ref, FUNC2(r));
	}
      }
    } else if (FUNC16(ir->t)) {  /* FP argument is on stack. */
      FUNC18(!(FUNC15(ir->t) && FUNC14(ref)));  /* No float k. */
      if (LJ_32 && (ofs & 4) && FUNC14(ref)) {
	/* Split stores for unaligned FP consts. */
	FUNC7(as, RID_ESP, ofs, (int32_t)FUNC13(ir)->u32.lo);
	FUNC7(as, RID_ESP, ofs+4, (int32_t)FUNC13(ir)->u32.hi);
      } else {
	r = FUNC19(as, ref, RSET_FPR);
	FUNC10(as, FUNC17(ir->t) ? XO_MOVSDto : XO_MOVSSto,
		  r, RID_ESP, ofs);
      }
      ofs += (LJ_32 && FUNC15(ir->t)) ? 4 : 8;
    } else {  /* Non-FP argument is on stack. */
      if (LJ_32 && ref < ASMREF_TMP1) {
	FUNC7(as, RID_ESP, ofs, ir->i);
      } else {
	r = FUNC19(as, ref, RSET_GPR);
	FUNC9(as, REX_64 + r, RID_ESP, ofs);
      }
      ofs += sizeof(intptr_t);
    }
    FUNC3(as);
  }
#if LJ_64 && !LJ_ABI_WIN
  if (patchnfpr) *patchnfpr = fpr - REGARG_FIRSTFPR;
#endif
}