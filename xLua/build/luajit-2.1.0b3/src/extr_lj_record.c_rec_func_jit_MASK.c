#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  traceno; } ;
struct TYPE_11__ {scalar_t__ framedepth; scalar_t__ retdepth; TYPE_1__ cur; int /*<<< orphan*/ * startpc; int /*<<< orphan*/ * pc; scalar_t__ instunroll; int /*<<< orphan*/ * patchpc; int /*<<< orphan*/  patchins; } ;
typedef  TYPE_2__ jit_State ;
typedef  int /*<<< orphan*/  TraceNo ;
struct TYPE_12__ {scalar_t__ linktype; int /*<<< orphan*/  startins; } ;
typedef  TYPE_3__ GCtrace ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 scalar_t__ LJ_TRLINK_RETURN ; 
 int /*<<< orphan*/  LJ_TRLINK_ROOT ; 
 int /*<<< orphan*/  LJ_TRLINK_TAILREC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(jit_State *J, TraceNo lnk)
{
  GCtrace *T;
  FUNC2(J);
  T = FUNC3(J, lnk);
  if (T->linktype == LJ_TRLINK_RETURN) {  /* Trace returns to interpreter? */
    FUNC0(J, lnk);
    /* Temporarily unpatch JFUNC* to continue recording across function. */
    J->patchins = *J->pc;
    J->patchpc = (BCIns *)J->pc;
    *J->patchpc = T->startins;
    return;
  }
  J->instunroll = 0;  /* Cannot continue across a compiled function. */
  if (J->pc == J->startpc && J->framedepth + J->retdepth == 0)
    FUNC1(J, LJ_TRLINK_TAILREC, J->cur.traceno);  /* Extra tail-rec. */
  else
    FUNC1(J, LJ_TRLINK_ROOT, lnk);  /* Link to the function. */
}