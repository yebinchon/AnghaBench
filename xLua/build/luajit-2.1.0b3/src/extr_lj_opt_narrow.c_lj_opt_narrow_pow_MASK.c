#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jit_State ;
typedef  scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ hi; } ;
struct TYPE_5__ {double n; TYPE_1__ u32; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int TRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IRCONV_CHECK ; 
 int IRCONV_INT_NUM ; 
 int IRFPM_EXP2 ; 
 int IRFPM_LOG2 ; 
 int IRFPM_SQRT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IR_ADD ; 
 int /*<<< orphan*/  IR_CONV ; 
 int /*<<< orphan*/  IR_FPMATH ; 
 int /*<<< orphan*/  IR_MUL ; 
 int /*<<< orphan*/  IR_POW ; 
 int /*<<< orphan*/  IR_ULE ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_2__*) ; 

TRef FUNC17(jit_State *J, TRef rb, TRef rc, TValue *vb, TValue *vc)
{
  rb = FUNC4(J, rb, vb);
  rb = FUNC8(J, rb);  /* Left arg is always treated as an FP number. */
  rc = FUNC4(J, rc, vc);
  /* Narrowing must be unconditional to preserve (-x)^i semantics. */
  if (FUNC15(vc) || FUNC11(FUNC9(vc))) {
    int checkrange = 0;
    /* Split pow is faster for bigger exponents. But do this only for (+k)^i. */
    if (FUNC13(rb) && (int32_t)FUNC6(FUNC0(FUNC14(rb)))->u32.hi >= 0) {
      int32_t k = FUNC10(vc);
      if (!(k >= -65536 && k <= 65536)) goto split_pow;
      checkrange = 1;
    }
    if (!FUNC12(rc)) {
      /* Guarded conversion to integer! */
      rc = FUNC5(FUNC1(IR_CONV), rc, IRCONV_INT_NUM|IRCONV_CHECK);
    }
    if (checkrange && !FUNC13(rc)) {  /* Range guard: -65536 <= i <= 65536 */
      TRef tmp = FUNC5(FUNC2(IR_ADD), rc, FUNC7(J, 65536));
      FUNC5(FUNC1(IR_ULE), tmp, FUNC7(J, 2*65536));
    }
    return FUNC5(FUNC3(IR_POW), rb, rc);
  }
split_pow:
  /* FOLD covers most cases, but some are easier to do here. */
  if (FUNC13(rb) && FUNC16(FUNC6(FUNC0(FUNC14(rb)))))
    return rb;  /* 1 ^ x ==> 1 */
  rc = FUNC8(J, rc);
  if (FUNC13(rc) && FUNC6(FUNC0(FUNC14(rc)))->n == 0.5)
    return FUNC5(FUNC3(IR_FPMATH), rb, IRFPM_SQRT);  /* x ^ 0.5 ==> sqrt(x) */
  /* Split up b^c into exp2(c*log2(b)). Assembler may rejoin later. */
  rb = FUNC5(FUNC3(IR_FPMATH), rb, IRFPM_LOG2);
  rc = FUNC5(FUNC3(IR_MUL), rb, rc);
  return FUNC5(FUNC3(IR_FPMATH), rc, IRFPM_EXP2);
}