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
 int /*<<< orphan*/  LJ_TRERR_BADTYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

TRef FUNC14(jit_State *J, TRef rb, TRef rc, TValue *vc)
{
  TRef tmp;
  if (FUNC12(vc) && !FUNC7(FUNC9(vc), vc))
    FUNC8(J, LJ_TRERR_BADTYPE);
  if ((LJ_DUALNUM || (J->flags & JIT_F_OPT_NARROW)) &&
      FUNC10(rb) && FUNC10(rc) &&
      (FUNC11(vc) ? FUNC4(vc) != 0 : !FUNC13(vc))) {
    FUNC3(FUNC0(IR_NE), rc, FUNC5(J, 0));
    return FUNC3(FUNC1(IR_MOD), rb, rc);
  }
  /* b % c ==> b - floor(b/c)*c */
  rb = FUNC6(J, rb);
  rc = FUNC6(J, rc);
  tmp = FUNC3(FUNC2(IR_DIV), rb, rc);
  tmp = FUNC3(FUNC2(IR_FPMATH), tmp, IRFPM_FLOOR);
  tmp = FUNC3(FUNC2(IR_MUL), tmp, rc);
  return FUNC3(FUNC2(IR_SUB), rb, tmp);
}