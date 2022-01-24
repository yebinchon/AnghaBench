#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {size_t snapno; TYPE_1__* T; } ;
struct TYPE_12__ {int /*<<< orphan*/  s; } ;
struct TYPE_11__ {size_t mapofs; size_t nent; } ;
struct TYPE_10__ {int* snapmap; TYPE_2__* snap; } ;
typedef  TYPE_2__ SnapShot ;
typedef  int SnapEntry ;
typedef  size_t MSize ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_3__ IRIns ;
typedef  TYPE_4__ ASMState ;

/* Variables and functions */
 TYPE_3__* FUNC0 (scalar_t__) ; 
 scalar_t__ LJ_SOFTFP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int SNAP_SOFTFPNUM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(ASMState *as, IRRef ren)
{
  SnapShot *snap = &as->T->snap[as->snapno];
  SnapEntry *map = &as->T->snapmap[snap->mapofs];
  MSize n, nent = snap->nent;
  for (n = 0; n < nent; n++) {
    SnapEntry sn = map[n];
    IRRef ref = FUNC3(sn);
    if (ref == ren || (LJ_SOFTFP && (sn & SNAP_SOFTFPNUM) && ++ref == ren)) {
      IRIns *ir = FUNC0(ref);
      FUNC2(as, ir);  /* Register renamed, so force a spill slot. */
      FUNC1((as, "snaprensp $f $s", ref, ir->s));
      return 1;  /* Found. */
    }
  }
  return 0;  /* Not found. */
}