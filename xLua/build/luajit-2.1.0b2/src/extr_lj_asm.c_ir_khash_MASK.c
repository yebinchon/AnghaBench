#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int lo; int hi; } ;
struct TYPE_12__ {TYPE_1__ u32; } ;
struct TYPE_11__ {int hash; } ;
struct TYPE_10__ {int /*<<< orphan*/  t; } ;
typedef  TYPE_2__ IRIns ;

/* Variables and functions */
 int HASH_BIAS ; 
 int IRT_FALSE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_5__* FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC12(IRIns *ir)
{
  uint32_t lo, hi;
  if (FUNC8(ir->t)) {
    return FUNC3(ir)->hash;
  } else if (FUNC6(ir->t)) {
    lo = FUNC2(ir)->u32.lo;
    hi = FUNC2(ir)->u32.hi << 1;
  } else if (FUNC7(ir->t)) {
    FUNC10(!FUNC5(ir->t));
    return FUNC9(ir->t)-IRT_FALSE;
  } else {
    FUNC10(FUNC4(ir->t));
    lo = FUNC11(FUNC1(ir));
    hi = lo + HASH_BIAS;
  }
  return FUNC0(lo, hi);
}