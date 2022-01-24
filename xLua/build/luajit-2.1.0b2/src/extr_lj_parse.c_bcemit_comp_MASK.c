#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_20__ {scalar_t__ info; } ;
struct TYPE_21__ {TYPE_1__ s; } ;
struct TYPE_23__ {int k; TYPE_2__ u; } ;
struct TYPE_22__ {scalar_t__ nactvar; int /*<<< orphan*/  freereg; } ;
typedef  TYPE_3__ FuncState ;
typedef  TYPE_4__ ExpDesc ;
typedef  scalar_t__ BinOpr ;
typedef  int /*<<< orphan*/  BCReg ;
typedef  scalar_t__ BCOp ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ BC_ISEQN ; 
 scalar_t__ BC_ISEQP ; 
 scalar_t__ BC_ISEQS ; 
 scalar_t__ BC_ISEQV ; 
 scalar_t__ BC_ISLT ; 
 scalar_t__ BC_ISNEV ; 
 scalar_t__ OPR_EQ ; 
 scalar_t__ OPR_LT ; 
 scalar_t__ OPR_NE ; 
 int VJMP ; 
#define  VKFALSE 132 
#define  VKNIL 131 
#define  VKNUM 130 
#define  VKSTR 129 
#define  VKTRUE 128 
 int VNONRELOC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC9(FuncState *fs, BinOpr opr, ExpDesc *e1, ExpDesc *e2)
{
  ExpDesc *eret = e1;
  BCIns ins;
  FUNC8(fs, e1);
  if (opr == OPR_EQ || opr == OPR_NE) {
    BCOp op = opr == OPR_EQ ? BC_ISEQV : BC_ISNEV;
    BCReg ra;
    if (FUNC6(e1)) { e1 = e2; e2 = eret; }  /* Need constant in 2nd arg. */
    ra = FUNC7(fs, e1);  /* First arg must be in a reg. */
    FUNC8(fs, e2);
    switch (e2->k) {
    case VKNIL: case VKFALSE: case VKTRUE:
      ins = FUNC0(op+(BC_ISEQP-BC_ISEQV), ra, FUNC4(e2));
      break;
    case VKSTR:
      ins = FUNC0(op+(BC_ISEQS-BC_ISEQV), ra, FUNC5(fs, e2));
      break;
    case VKNUM:
      ins = FUNC0(op+(BC_ISEQN-BC_ISEQV), ra, FUNC3(fs, e2));
      break;
    default:
      ins = FUNC0(op, ra, FUNC7(fs, e2));
      break;
    }
  } else {
    uint32_t op = opr-OPR_LT+BC_ISLT;
    BCReg ra, rd;
    if ((op-BC_ISLT) & 1) {  /* GT -> LT, GE -> LE */
      e1 = e2; e2 = eret;  /* Swap operands. */
      op = ((op-BC_ISLT)^3)+BC_ISLT;
      FUNC8(fs, e1);
    }
    rd = FUNC7(fs, e2);
    ra = FUNC7(fs, e1);
    ins = FUNC0(op, ra, rd);
  }
  /* Using expr_free might cause asserts if the order is wrong. */
  if (e1->k == VNONRELOC && e1->u.s.info >= fs->nactvar) fs->freereg--;
  if (e2->k == VNONRELOC && e2->u.s.info >= fs->nactvar) fs->freereg--;
  FUNC1(fs, ins);
  eret->u.s.info = FUNC2(fs);
  eret->k = VJMP;
}