#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;
typedef  struct TYPE_17__   TYPE_13__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_22__ {scalar_t__ baseslot; int needsnap; scalar_t__ maxslot; scalar_t__* base; TYPE_3__* L; TYPE_13__* fn; TYPE_2__* pt; } ;
typedef  TYPE_4__ jit_State ;
typedef  int int32_t ;
struct TYPE_23__ {int /*<<< orphan*/  closed; scalar_t__ dhash; } ;
struct TYPE_21__ {scalar_t__ base; int /*<<< orphan*/  maxstack; int /*<<< orphan*/  stack; } ;
struct TYPE_20__ {scalar_t__ flags; } ;
struct TYPE_19__ {int /*<<< orphan*/ * uvptr; } ;
struct TYPE_18__ {TYPE_5__ uv; } ;
struct TYPE_17__ {TYPE_1__ l; } ;
typedef  scalar_t__ TRef ;
typedef  int /*<<< orphan*/  IRType ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_5__ GCupval ;
typedef  scalar_t__ BCReg ;

/* Variables and functions */
 scalar_t__ HASH_BIAS ; 
 scalar_t__ IRCONV_NUM_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_FUNC ; 
 int /*<<< orphan*/  IRT_NIL ; 
 int /*<<< orphan*/  IRT_PGC ; 
 int /*<<< orphan*/  IR_ADD ; 
 int /*<<< orphan*/  IR_CONV ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_OBAR ; 
 int /*<<< orphan*/  IR_SUB ; 
 int /*<<< orphan*/  IR_UGT ; 
 int /*<<< orphan*/  IR_ULOAD ; 
 int /*<<< orphan*/  IR_UREFC ; 
 int /*<<< orphan*/  IR_UREFO ; 
 int /*<<< orphan*/  IR_USTORE ; 
 int /*<<< orphan*/  LJ_DUALNUM ; 
 int LJ_FR2 ; 
 scalar_t__ PROTO_CLC_POLY ; 
 scalar_t__ REF_BASE ; 
 scalar_t__ TREF_FRAME ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_16__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_4__*,TYPE_13__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*,int) ; 
 scalar_t__ FUNC13 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (TYPE_5__*) ; 

__attribute__((used)) static TRef FUNC23(jit_State *J, uint32_t uv, TRef val)
{
  GCupval *uvp = &FUNC5(J->fn->l.uvptr[uv])->uv;
  TRef fn = FUNC6(J);
  IRRef uref;
  int needbarrier = 0;
  if (FUNC15(J, uvp)) {  /* Try to constify immutable upvalue. */
    TRef tr, kfunc;
    FUNC14(val == 0);
    if (!FUNC18(fn)) {  /* Late specialization of current function. */
      if (J->pt->flags >= PROTO_CLC_POLY)
	goto noconstify;
      kfunc = FUNC11(J, J->fn);
      FUNC4(FUNC1(IR_EQ, IRT_FUNC), fn, kfunc);
#if LJ_FR2
      J->base[-2] = kfunc;
#else
      J->base[-1] = kfunc | TREF_FRAME;
#endif
      fn = kfunc;
    }
    tr = FUNC13(J, FUNC22(uvp));
    if (tr)
      return tr;
  }
noconstify:
  /* Note: this effectively limits LJ_MAX_UPVAL to 127. */
  uv = (uv << 8) | (FUNC8(uvp->dhash, uvp->dhash + HASH_BIAS) & 0xff);
  if (!uvp->closed) {
    uref = FUNC19(FUNC4(FUNC1(IR_UREFO, IRT_PGC), fn, uv));
    /* In current stack? */
    if (FUNC22(uvp) >= FUNC21(J->L->stack) &&
	FUNC22(uvp) < FUNC21(J->L->maxstack)) {
      int32_t slot = (int32_t)(FUNC22(uvp) - (J->L->base - J->baseslot));
      if (slot >= 0) {  /* Aliases an SSA slot? */
	FUNC4(FUNC1(IR_EQ, IRT_PGC),
	       REF_BASE,
	       FUNC4(FUNC0(IR_ADD, IRT_PGC), uref,
		      FUNC12(J, (slot - 1 - LJ_FR2) * -8)));
	slot -= (int32_t)J->baseslot;  /* Note: slot number may be negative! */
	if (val == 0) {
	  return FUNC7(J, slot);
	} else {
	  J->base[slot] = val;
	  if (slot >= (int32_t)J->maxslot) J->maxslot = (BCReg)(slot+1);
	  return 0;
	}
      }
    }
    FUNC4(FUNC1(IR_UGT, IRT_PGC),
	   FUNC4(FUNC0(IR_SUB, IRT_PGC), uref, REF_BASE),
	   FUNC12(J, (J->baseslot + J->maxslot) * 8));
  } else {
    needbarrier = 1;
    uref = FUNC19(FUNC4(FUNC1(IR_UREFC, IRT_PGC), fn, uv));
  }
  if (val == 0) {  /* Upvalue load */
    IRType t = FUNC10(FUNC22(uvp));
    TRef res = FUNC4(FUNC1(IR_ULOAD, t), uref, 0);
    if (FUNC9(t)) res = FUNC3(t);  /* Canonicalize primitive refs. */
    return res;
  } else {  /* Upvalue store. */
    /* Convert int to number before storing. */
    if (!LJ_DUALNUM && FUNC17(val))
      val = FUNC4(FUNC2(IR_CONV), val, IRCONV_NUM_INT);
    FUNC4(FUNC0(IR_USTORE, FUNC20(val)), uref, val);
    if (needbarrier && FUNC16(val))
      FUNC4(FUNC0(IR_OBAR, IRT_NIL), uref, val);
    J->needsnap = 1;
    return 0;
  }
}