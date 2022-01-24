#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* slot; } ;
typedef  TYPE_1__ jit_State ;
typedef  int TRef ;
typedef  int /*<<< orphan*/  SnapEntry ;
typedef  size_t MSize ;
typedef  scalar_t__ IRRef ;

/* Variables and functions */
 int SNAP_CONT ; 
 int SNAP_FRAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static TRef FUNC2(jit_State *J, SnapEntry *map, MSize nmax, IRRef ref)
{
  MSize j;
  for (j = 0; j < nmax; j++)
    if (FUNC0(map[j]) == ref)
      return J->slot[FUNC1(map[j])] & ~(SNAP_CONT|SNAP_FRAME);
  return 0;
}