#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TRef ;

/* Variables and functions */
 int /*<<< orphan*/  IRFPM_FLOOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IR_DIV ; 
 int /*<<< orphan*/  IR_FPMATH ; 
 int /*<<< orphan*/  IR_MOD ; 
 int /*<<< orphan*/  IR_MUL ; 
 int /*<<< orphan*/  IR_NE ; 
 int /*<<< orphan*/  IR_SUB ; 
 int JIT_F_OPT_NARROW ; 
 scalar_t__ LJ_DUALNUM ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

TRef FUNC11(jit_State *J, TRef rb, TRef rc, TValue *vb, TValue *vc)
{
  TRef tmp;
  rb = FUNC3(J, rb, vb);
  rc = FUNC3(J, rc, vc);
  if ((LJ_DUALNUM || (J->flags & JIT_F_OPT_NARROW)) &&
      FUNC8(rb) && FUNC8(rc) &&
      (FUNC9(vc) ? FUNC5(vc) != 0 : !FUNC10(vc))) {
    FUNC4(FUNC0(IR_NE), rc, FUNC6(J, 0));
    return FUNC4(FUNC1(IR_MOD), rb, rc);
  }
  /* b % c ==> b - floor(b/c)*c */
  rb = FUNC7(J, rb);
  rc = FUNC7(J, rc);
  tmp = FUNC4(FUNC2(IR_DIV), rb, rc);
  tmp = FUNC4(FUNC2(IR_FPMATH), tmp, IRFPM_FLOOR);
  tmp = FUNC4(FUNC2(IR_MUL), tmp, rc);
  return FUNC4(FUNC2(IR_SUB), rb, tmp);
}