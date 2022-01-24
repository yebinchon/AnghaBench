#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int gcsteps; scalar_t__ stopins; } ;
struct TYPE_8__ {scalar_t__ o; } ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ IR_CNEW ; 
 scalar_t__ IR_CNEWI ; 
 scalar_t__ IR_TDUP ; 
 scalar_t__ IR_TNEW ; 
 scalar_t__ LJ_HASFFI ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(ASMState *as, IRIns *ir)
{
  IRIns *ira;
  for (ira = FUNC0(as->stopins+1); ira < ir; ira++)
    if ((ira->o == IR_TNEW || ira->o == IR_TDUP ||
	 (LJ_HASFFI && (ira->o == IR_CNEW || ira->o == IR_CNEWI))) &&
	FUNC2(ira))
      as->gcsteps++;
  if (as->gcsteps)
    FUNC1(as);
  as->gcsteps = 0x80000000;  /* Prevent implicit GC check further up. */
}