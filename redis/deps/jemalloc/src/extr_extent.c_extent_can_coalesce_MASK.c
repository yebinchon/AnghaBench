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
struct TYPE_3__ {scalar_t__ state; } ;
typedef  TYPE_1__ extents_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ extent_state_active ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static bool
FUNC4(arena_t *arena, extents_t *extents, const extent_t *inner,
    const extent_t *outer) {
	FUNC0(FUNC1(inner) == arena);
	if (FUNC1(outer) != arena) {
		return false;
	}

	FUNC0(FUNC3(inner) == extent_state_active);
	if (FUNC3(outer) != extents->state) {
		return false;
	}

	if (FUNC2(inner) != FUNC2(outer)) {
		return false;
	}

	return true;
}