#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  t; } ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  XO_MULSD ; 
 int /*<<< orphan*/  XOg_X_IMUL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ASMState *as, IRIns *ir)
{
  if (FUNC2(ir->t))
    FUNC0(as, ir, XO_MULSD);
  else
    FUNC1(as, ir, XOg_X_IMUL);
}