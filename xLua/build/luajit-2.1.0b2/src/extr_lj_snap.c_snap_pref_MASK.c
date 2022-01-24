#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_6__ {TYPE_1__* ir; } ;
struct TYPE_5__ {int /*<<< orphan*/  t; int /*<<< orphan*/  prev; } ;
typedef  scalar_t__ TRef ;
typedef  int /*<<< orphan*/  SnapEntry ;
typedef  int /*<<< orphan*/  MSize ;
typedef  size_t IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ GCtrace ;
typedef  int /*<<< orphan*/  BloomFilter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IR_PVAL ; 
 size_t REF_BIAS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static TRef FUNC8(jit_State *J, GCtrace *T, SnapEntry *map, MSize nmax,
		      BloomFilter seen, IRRef ref)
{
  IRIns *ir = &T->ir[ref];
  TRef tr;
  if (FUNC3(ref))
    tr = FUNC7(J, ir);
  else if (!FUNC5(ir->prev))
    tr = 0;
  else if (!FUNC1(seen, ref) || (tr = FUNC6(J, map, nmax, ref)) == 0)
    tr = FUNC2(FUNC0(IR_PVAL, FUNC4(ir->t)), ref - REF_BIAS, 0);
  return tr;
}