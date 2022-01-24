#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86Op ;
struct TYPE_7__ {int /*<<< orphan*/  r; } ;
struct TYPE_6__ {scalar_t__ op1; scalar_t__ op2; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  int /*<<< orphan*/  Reg ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 TYPE_5__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(ASMState *as, IRIns *ir, x86Op xo)
{
  IRRef lref = ir->op1;
  IRRef rref = ir->op2;
  RegSet allow = RSET_FPR;
  Reg dest;
  Reg right = FUNC0(rref)->r;
  if (FUNC5(right)) {
    FUNC9(allow, right);
    FUNC8(as, right);
  }
  dest = FUNC4(as, ir, allow);
  if (lref == rref) {
    right = dest;
  } else if (FUNC7(right)) {
    if (FUNC2(as, ir)) {
      IRRef tmp = lref; lref = rref; rref = tmp;
    }
    right = FUNC1(as, rref, FUNC9(allow, dest));
  }
  FUNC3(as, xo, dest, right);
  FUNC6(as, dest, lref);
}