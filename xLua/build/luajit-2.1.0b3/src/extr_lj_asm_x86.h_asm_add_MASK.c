#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int flags; scalar_t__ flagmcp; scalar_t__ mcp; } ;
struct TYPE_11__ {int /*<<< orphan*/  t; } ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int JIT_F_LEA_AGU ; 
 int /*<<< orphan*/  XO_ADDSD ; 
 int /*<<< orphan*/  XOg_ADD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(ASMState *as, IRIns *ir)
{
  if (FUNC4(ir->t))
    FUNC0(as, ir, XO_ADDSD);
  else if ((as->flags & JIT_F_LEA_AGU) || as->flagmcp == as->mcp ||
	   FUNC3(ir->t) || !FUNC2(as, ir))
    FUNC1(as, ir, XOg_ADD);
}