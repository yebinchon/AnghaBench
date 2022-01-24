#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  t; } ;
struct TYPE_9__ {size_t snapno; TYPE_1__* T; } ;
struct TYPE_8__ {size_t mapofs; size_t nent; } ;
struct TYPE_7__ {int* snapmap; TYPE_2__* snap; } ;
typedef  TYPE_2__ SnapShot ;
typedef  int SnapEntry ;
typedef  size_t MSize ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_6__* FUNC0 (scalar_t__) ; 
 scalar_t__ IRT_SOFTFP ; 
 scalar_t__ LJ_SOFTFP ; 
 int SNAP_SOFTFPNUM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(ASMState *as)
{
  SnapShot *snap = &as->T->snap[as->snapno];
  SnapEntry *map = &as->T->snapmap[snap->mapofs];
  MSize n, nent = snap->nent;
  for (n = 0; n < nent; n++) {
    SnapEntry sn = map[n];
    IRRef ref = FUNC5(sn);
    if (!FUNC2(ref)) {
      FUNC1(as, ref);
      if (LJ_SOFTFP && (sn & SNAP_SOFTFPNUM)) {
	FUNC4(FUNC3(FUNC0(ref+1)->t) == IRT_SOFTFP);
	FUNC1(as, ref+1);
      }
    }
  }
}