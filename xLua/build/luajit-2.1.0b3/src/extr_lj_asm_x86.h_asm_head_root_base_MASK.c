#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  modset; } ;
struct TYPE_7__ {int r; int /*<<< orphan*/  t; } ;
typedef  int Reg ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REF_BASE ; 
 int REX_GC64 ; 
 int RID_BASE ; 
 int RID_INIT ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(ASMState *as)
{
  IRIns *ir = FUNC0(REF_BASE);
  Reg r = ir->r;
  if (FUNC4(r)) {
    FUNC3(as, r);
    if (FUNC5(as->modset, r) || FUNC2(ir->t))
      ir->r = RID_INIT;  /* No inheritance for modified BASE register. */
    if (r != RID_BASE)
      FUNC1(as, XO_MOV, r|REX_GC64, RID_BASE);
  }
}