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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_5__ {int /*<<< orphan*/  stats; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 size_t LG_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ config_stats ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(tsdn_t *tsdn, arena_t *arena, extent_t *extent,
    size_t oldusize) {
	size_t usize = FUNC4(extent);
	size_t udiff = oldusize - usize;

	if (config_stats) {
		FUNC2(tsdn, &arena->stats);
		FUNC0(tsdn, arena, oldusize, usize);
		FUNC3(tsdn, &arena->stats);
	}
	FUNC1(arena, udiff >> LG_PAGE);
}