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
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_3__ {int /*<<< orphan*/  slabs_full; } ;
typedef  TYPE_1__ bin_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(arena_t *arena, bin_t *bin, extent_t *slab) {
	FUNC1(FUNC3(slab) == 0);
	/*
	 *  Tracking extents is required by arena_reset, which is not allowed
	 *  for auto arenas.  Bypass this step to avoid touching the extent
	 *  linkage (often results in cache misses) for auto arenas.
	 */
	if (FUNC0(arena)) {
		return;
	}
	FUNC2(&bin->slabs_full, slab);
}