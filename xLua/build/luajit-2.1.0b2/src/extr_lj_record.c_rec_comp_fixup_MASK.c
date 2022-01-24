#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nsnap; int /*<<< orphan*/ * snapmap; TYPE_3__* snap; } ;
struct TYPE_7__ {int needsnap; scalar_t__ maxslot; TYPE_1__ cur; } ;
typedef  TYPE_2__ jit_State ;
struct TYPE_8__ {size_t mapofs; size_t nent; } ;
typedef  TYPE_3__ SnapShot ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(jit_State *J, const BCIns *pc, int cond)
{
  BCIns jmpins = pc[1];
  const BCIns *npc = pc + 2 + (cond ? FUNC2(jmpins) : 0);
  SnapShot *snap = &J->cur.snap[J->cur.nsnap-1];
  /* Set PC to opposite target to avoid re-recording the comp. in side trace. */
  J->cur.snapmap[snap->mapofs + snap->nent] = FUNC0(npc);
  J->needsnap = 1;
  if (FUNC1(jmpins) < J->maxslot) J->maxslot = FUNC1(jmpins);
  FUNC3(J);  /* Shrink last snapshot if possible. */
}