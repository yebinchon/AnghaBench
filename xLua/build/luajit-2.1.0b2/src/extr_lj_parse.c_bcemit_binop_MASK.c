#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int info; } ;
struct TYPE_16__ {TYPE_1__ s; } ;
struct TYPE_17__ {scalar_t__ t; scalar_t__ f; scalar_t__ k; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  TYPE_3__ ExpDesc ;
typedef  scalar_t__ BinOpr ;

/* Variables and functions */
 scalar_t__ BC_CAT ; 
 scalar_t__ NO_JMP ; 
 scalar_t__ OPR_AND ; 
 scalar_t__ OPR_CONCAT ; 
 scalar_t__ OPR_EQ ; 
 scalar_t__ OPR_GE ; 
 scalar_t__ OPR_GT ; 
 scalar_t__ OPR_LE ; 
 scalar_t__ OPR_LT ; 
 scalar_t__ OPR_NE ; 
 scalar_t__ OPR_OR ; 
 scalar_t__ OPR_POW ; 
 scalar_t__ VRELOCABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC13(FuncState *fs, BinOpr op, ExpDesc *e1, ExpDesc *e2)
{
  if (op <= OPR_POW) {
    FUNC3(fs, op, e1, e2);
  } else if (op == OPR_AND) {
    FUNC11(e1->t == NO_JMP);  /* List must be closed. */
    FUNC6(fs, e2);
    FUNC10(fs, &e2->f, e1->f);
    *e1 = *e2;
  } else if (op == OPR_OR) {
    FUNC11(e1->f == NO_JMP);  /* List must be closed. */
    FUNC6(fs, e2);
    FUNC10(fs, &e2->t, e1->t);
    *e1 = *e2;
  } else if (op == OPR_CONCAT) {
    FUNC9(fs, e2);
    if (e2->k == VRELOCABLE && FUNC1(*FUNC5(fs, e2)) == BC_CAT) {
      FUNC11(e1->u.s.info == FUNC0(*FUNC5(fs, e2))-1);
      FUNC7(fs, e1);
      FUNC12(FUNC5(fs, e2), e1->u.s.info);
      e1->u.s.info = e2->u.s.info;
    } else {
      FUNC8(fs, e2);
      FUNC7(fs, e2);
      FUNC7(fs, e1);
      e1->u.s.info = FUNC2(fs, BC_CAT, 0, e1->u.s.info, e2->u.s.info);
    }
    e1->k = VRELOCABLE;
  } else {
    FUNC11(op == OPR_NE || op == OPR_EQ ||
	       op == OPR_LT || op == OPR_GE || op == OPR_LE || op == OPR_GT);
    FUNC4(fs, op, e1, e2);
  }
}