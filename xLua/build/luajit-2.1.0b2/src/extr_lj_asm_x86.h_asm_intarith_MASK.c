#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_19__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86Op ;
typedef  scalar_t__ x86Arith ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_22__ {int* flagmcp; int* mcp; } ;
struct TYPE_21__ {scalar_t__ op1; scalar_t__ op2; int /*<<< orphan*/  t; } ;
struct TYPE_20__ {int /*<<< orphan*/  r; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int MCode ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_O ; 
 TYPE_19__* FUNC0 (scalar_t__) ; 
 scalar_t__ LJ_64 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ XI_TESTb ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  XO_IMUL ; 
 int /*<<< orphan*/  XO_IMULi ; 
 int /*<<< orphan*/  XO_IMULi8 ; 
 scalar_t__ XOg_X_IMUL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC21(ASMState *as, IRIns *ir, x86Arith xa)
{
  IRRef lref = ir->op1;
  IRRef rref = ir->op2;
  RegSet allow = RSET_GPR;
  Reg dest, right;
  int32_t k = 0;
  if (as->flagmcp == as->mcp) {  /* Drop test r,r instruction. */
    MCode *p = as->mcp + ((LJ_64 && *as->mcp < XI_TESTb) ? 3 : 2);
    if ((p[1] & 15) < 14) {
      if ((p[1] & 15) >= 12) p[1] -= 4;  /* L <->S, NL <-> NS */
      as->flagmcp = NULL;
      as->mcp = p;
    }  /* else: cannot transform LE/NLE to cc without use of OF. */
  }
  right = FUNC0(rref)->r;
  if (FUNC16(right)) {
    FUNC20(allow, right);
    FUNC19(as, right);
  }
  dest = FUNC15(as, ir, allow);
  if (lref == rref) {
    right = dest;
  } else if (FUNC18(right) && !FUNC6(as, rref, &k)) {
    if (FUNC7(as, ir)) {
      IRRef tmp = lref; lref = rref; rref = tmp;
    }
    right = FUNC4(as, rref, FUNC20(allow, dest), FUNC13(ir->t));
  }
  if (FUNC14(ir->t))  /* For IR_ADDOV etc. */
    FUNC5(as, CC_O);
  if (xa != XOg_X_IMUL) {
    if (FUNC16(right))
      FUNC12(as, FUNC3(xa), FUNC1(ir, dest), right);
    else
      FUNC9(as, FUNC2(xa), FUNC1(ir, dest), k);
  } else if (FUNC16(right)) {  /* IMUL r, mrm. */
    FUNC12(as, XO_IMUL, FUNC1(ir, dest), right);
  } else {  /* IMUL r, r, k. */
    /* NYI: use lea/shl/add/sub (FOLD only does 2^k) depending on CPU. */
    Reg left = FUNC4(as, lref, RSET_GPR, FUNC13(ir->t));
    x86Op xo;
    if (FUNC8(k)) { FUNC11(as, k); xo = XO_IMULi8;
    } else { FUNC10(as, k); xo = XO_IMULi; }
    FUNC12(as, xo, FUNC1(ir, dest), left);
    return;
  }
  FUNC17(as, dest, lref);
}