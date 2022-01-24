#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_18__ {scalar_t__ info; } ;
struct TYPE_19__ {TYPE_1__ s; } ;
struct TYPE_21__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_20__ {scalar_t__ nactvar; int /*<<< orphan*/  freereg; } ;
typedef  TYPE_3__ FuncState ;
typedef  TYPE_4__ ExpDesc ;
typedef  scalar_t__ BinOpr ;
typedef  int /*<<< orphan*/  BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  BCMAX_B ; 
 int /*<<< orphan*/  BCMAX_C ; 
 scalar_t__ BC_ADDNV ; 
 scalar_t__ BC_ADDVN ; 
 scalar_t__ BC_ADDVV ; 
 scalar_t__ BC_POW ; 
 scalar_t__ OPR_ADD ; 
 scalar_t__ OPR_POW ; 
 scalar_t__ VNONRELOC ; 
 scalar_t__ VRELOCABLE ; 
 scalar_t__ FUNC0 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC5 (scalar_t__,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(FuncState *fs, BinOpr opr, ExpDesc *e1, ExpDesc *e2)
{
  BCReg rb, rc, t;
  uint32_t op;
  if (FUNC5(opr, e1, e2))
    return;
  if (opr == OPR_POW) {
    op = BC_POW;
    rc = FUNC3(fs, e2);
    rb = FUNC3(fs, e1);
  } else {
    op = opr-OPR_ADD+BC_ADDVV;
    /* Must discharge 2nd operand first since VINDEXED might free regs. */
    FUNC4(fs, e2);
    if (FUNC2(e2) && (rc = FUNC1(fs, e2)) <= BCMAX_C)
      op -= BC_ADDVV-BC_ADDVN;
    else
      rc = FUNC3(fs, e2);
    /* 1st operand discharged by bcemit_binop_left, but need KNUM/KSHORT. */
    FUNC6(FUNC2(e1) || e1->k == VNONRELOC);
    FUNC4(fs, e1);
    /* Avoid two consts to satisfy bytecode constraints. */
    if (FUNC2(e1) && !FUNC2(e2) &&
	(t = FUNC1(fs, e1)) <= BCMAX_B) {
      rb = rc; rc = t; op -= BC_ADDVV-BC_ADDNV;
    } else {
      rb = FUNC3(fs, e1);
    }
  }
  /* Using expr_free might cause asserts if the order is wrong. */
  if (e1->k == VNONRELOC && e1->u.s.info >= fs->nactvar) fs->freereg--;
  if (e2->k == VNONRELOC && e2->u.s.info >= fs->nactvar) fs->freereg--;
  e1->u.s.info = FUNC0(fs, op, 0, rb, rc);
  e1->k = VRELOCABLE;
}