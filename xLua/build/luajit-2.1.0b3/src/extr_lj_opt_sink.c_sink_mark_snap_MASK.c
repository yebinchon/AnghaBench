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
struct TYPE_7__ {int /*<<< orphan*/ * snapmap; } ;
struct TYPE_8__ {TYPE_1__ cur; } ;
typedef  TYPE_2__ jit_State ;
struct TYPE_10__ {int /*<<< orphan*/  t; } ;
struct TYPE_9__ {size_t mapofs; size_t nent; } ;
typedef  TYPE_3__ SnapShot ;
typedef  int /*<<< orphan*/  SnapEntry ;
typedef  size_t MSize ;
typedef  int /*<<< orphan*/  IRRef ;

/* Variables and functions */
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(jit_State *J, SnapShot *snap)
{
  SnapEntry *map = &J->cur.snapmap[snap->mapofs];
  MSize n, nent = snap->nent;
  for (n = 0; n < nent; n++) {
    IRRef ref = FUNC3(map[n]);
    if (!FUNC1(ref))
      FUNC2(FUNC0(ref)->t);
  }
}