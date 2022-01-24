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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IR_CONV ; 
 int /*<<< orphan*/  IR_NEG ; 
 int /*<<< orphan*/  IR_SUBOV ; 
 int /*<<< orphan*/  LJ_KSIMD_NEG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

TRef FUNC8(jit_State *J, TRef rc, TValue *vc)
{
  rc = FUNC2(J, rc, vc);
  if (FUNC7(rc)) {
    if ((uint32_t)FUNC6(vc) != 0x80000000u)
      return FUNC3(FUNC0(IR_SUBOV), FUNC4(J, 0), rc);
    rc = FUNC3(FUNC1(IR_CONV), rc, IRCONV_NUM_INT);
  }
  return FUNC3(FUNC1(IR_NEG), rc, FUNC5(J, LJ_KSIMD_NEG));
}