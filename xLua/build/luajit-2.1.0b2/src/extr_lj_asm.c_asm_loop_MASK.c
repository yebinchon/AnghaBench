#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * mcp; int /*<<< orphan*/  realign; int /*<<< orphan*/ * mcloop; scalar_t__ fuseref; scalar_t__ sectref; int /*<<< orphan*/ * invmcp; int /*<<< orphan*/  flagmcp; scalar_t__ gcsteps; int /*<<< orphan*/  snapno; int /*<<< orphan*/  loopsnapno; } ;
typedef  int /*<<< orphan*/  MCode ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(ASMState *as)
{
  MCode *mcspill;
  /* LOOP is a guard, so the snapno is up to date. */
  as->loopsnapno = as->snapno;
  if (as->gcsteps)
    FUNC2(as);
  /* LOOP marks the transition from the variant to the invariant part. */
  as->flagmcp = *(as->invmcp = NULL);
  as->sectref = 0;
  if (!FUNC7(as)) as->fuseref = 0;
  FUNC5(as);
  mcspill = as->mcp;
  FUNC4(as);
  FUNC3(as);
  as->mcloop = as->mcp;
  FUNC0((as, "===== LOOP ====="));
  if (!as->realign) FUNC1();
  if (as->mcp != mcspill)
    FUNC6(as, mcspill);
}