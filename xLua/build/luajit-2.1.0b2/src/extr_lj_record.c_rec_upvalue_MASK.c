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
typedef  struct TYPE_17__   TYPE_15__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_21__ {scalar_t__ baseslot; int needsnap; scalar_t__ maxslot; scalar_t__* base; TYPE_3__* L; TYPE_12__* fn; TYPE_2__* pt; } ;
typedef  TYPE_4__ jit_State ;
typedef  size_t int32_t ;
struct TYPE_22__ {int /*<<< orphan*/  closed; scalar_t__ dhash; } ;
struct TYPE_20__ {scalar_t__ base; int /*<<< orphan*/  maxstack; int /*<<< orphan*/  stack; } ;
struct TYPE_19__ {scalar_t__ flags; } ;
struct TYPE_18__ {int /*<<< orphan*/ * uvptr; } ;
struct TYPE_17__ {TYPE_5__ uv; } ;
struct TYPE_16__ {TYPE_1__ l; } ;
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
 int /*<<< orphan*/  IRT_P32 ; 
 int /*<<< orphan*/  IR_CONV ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_OBAR ; 
 int /*<<< orphan*/  IR_ULOAD ; 
 int /*<<< orphan*/  IR_UREFC ; 
 int /*<<< orphan*/  IR_UREFO ; 
 int /*<<< orphan*/  IR_USTORE ; 
 int /*<<< orphan*/  LJ_DUALNUM ; 
 scalar_t__ PROTO_CLC_POLY ; 
 scalar_t__ TREF_FRAME ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_15__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,size_t) ; 
 int FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_4__*,TYPE_12__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_5__*) ; 

__attribute__((used)) static TRef FUNC22(jit_State *J, uint32_t uv, TRef val)
{
  GCupval *uvp = &FUNC5(J->fn->l.uvptr[uv])->uv;
  TRef fn = FUNC6(J);
  IRRef uref;
  int needbarrier = 0;
  if (FUNC14(J, uvp)) {  /* Try to constify immutable upvalue. */
    TRef tr, kfunc;
    FUNC13(val == 0);
    if (!FUNC17(fn)) {  /* Late specialization of current function. */
      if (J->pt->flags >= PROTO_CLC_POLY)
	goto noconstify;
      kfunc = FUNC11(J, J->fn);
      FUNC4(FUNC1(IR_EQ, IRT_FUNC), fn, kfunc);
      J->base[-1] = TREF_FRAME | kfunc;
      fn = kfunc;
    }
    tr = FUNC12(J, FUNC21(uvp));
    if (tr)
      return tr;
  }
noconstify:
  /* Note: this effectively limits LJ_MAX_UPVAL to 127. */
  uv = (uv << 8) | (FUNC8(uvp->dhash, uvp->dhash + HASH_BIAS) & 0xff);
  if (!uvp->closed) {
    /* In current stack? */
    if (FUNC21(uvp) >= FUNC20(J->L->stack) &&
	FUNC21(uvp) < FUNC20(J->L->maxstack)) {
      int32_t slot = (int32_t)(FUNC21(uvp) - (J->L->base - J->baseslot));
      if (slot >= 0) {  /* Aliases an SSA slot? */
	slot -= (int32_t)J->baseslot;  /* Note: slot number may be negative! */
	/* NYI: add IR to guard that it's still aliasing the same slot. */
	if (val == 0) {
	  return FUNC7(J, slot);
	} else {
	  J->base[slot] = val;
	  if (slot >= (int32_t)J->maxslot) J->maxslot = (BCReg)(slot+1);
	  return 0;
	}
      }
    }
    uref = FUNC18(FUNC4(FUNC1(IR_UREFO, IRT_P32), fn, uv));
  } else {
    needbarrier = 1;
    uref = FUNC18(FUNC4(FUNC1(IR_UREFC, IRT_P32), fn, uv));
  }
  if (val == 0) {  /* Upvalue load */
    IRType t = FUNC10(FUNC21(uvp));
    TRef res = FUNC4(FUNC1(IR_ULOAD, t), uref, 0);
    if (FUNC9(t)) res = FUNC3(t);  /* Canonicalize primitive refs. */
    return res;
  } else {  /* Upvalue store. */
    /* Convert int to number before storing. */
    if (!LJ_DUALNUM && FUNC16(val))
      val = FUNC4(FUNC2(IR_CONV), val, IRCONV_NUM_INT);
    FUNC4(FUNC0(IR_USTORE, FUNC19(val)), uref, val);
    if (needbarrier && FUNC15(val))
      FUNC4(FUNC0(IR_OBAR, IRT_NIL), uref, val);
    J->needsnap = 1;
    return 0;
  }
}