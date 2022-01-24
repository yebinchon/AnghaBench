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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_5__ {int loopinv; scalar_t__ realign; int /*<<< orphan*/ * invmcp; int /*<<< orphan*/ * mcp; int /*<<< orphan*/  snapno; int /*<<< orphan*/  J; } ;
typedef  int /*<<< orphan*/  MCode ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(ASMState *as, int cc)
{
  MCode *target = FUNC3(as->J, as->snapno);
  MCode *p = as->mcp;
  if (FUNC0(p == as->invmcp)) {
    as->loopinv = 1;
    *(int32_t *)(p+1) = FUNC4(p+5, target);
    target = p;
    cc ^= 1;
    if (as->realign) {
      FUNC2(as, cc, target);
      return;
    }
  }
  FUNC1(as, cc, target);
}