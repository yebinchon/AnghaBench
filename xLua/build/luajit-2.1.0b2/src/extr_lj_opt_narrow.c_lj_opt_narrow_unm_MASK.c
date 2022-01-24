#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  jit_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TRef ;

/* Variables and functions */
 int /*<<< orphan*/  IRCONV_NUM_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_NUM ; 
 int /*<<< orphan*/  IR_CONV ; 
 int /*<<< orphan*/  IR_NEG ; 
 int /*<<< orphan*/  IR_STRTO ; 
 int /*<<< orphan*/  IR_SUBOV ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

TRef FUNC11(jit_State *J, TRef rc, TValue *vc)
{
  if (FUNC10(rc)) {
    rc = FUNC3(FUNC0(IR_STRTO, IRT_NUM), rc, 0);
    FUNC6(FUNC8(vc), vc);
  }
  if (FUNC9(rc)) {
    if ((uint32_t)FUNC7(vc) != 0x80000000u)
      return FUNC3(FUNC1(IR_SUBOV), FUNC4(J, 0), rc);
    rc = FUNC3(FUNC2(IR_CONV), rc, IRCONV_NUM_INT);
  }
  return FUNC3(FUNC2(IR_NEG), rc, FUNC5(J));
}