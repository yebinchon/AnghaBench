#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ state; } ;
typedef  TYPE_1__ tsd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (TYPE_1__*) ; 
 int* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ tsd_state_minimal_initialized ; 
 scalar_t__ tsd_state_reincarnated ; 
 int* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC7(tsd_t *tsd) {
	FUNC0(tsd->state == tsd_state_reincarnated ||
	    tsd->state == tsd_state_minimal_initialized);
	/*
	 * During reincarnation, there is no guarantee that the cleanup function
	 * will be called (deallocation may happen after all tsd destructors).
	 * We set up tsd in a way that no cleanup is needed.
	 */
	FUNC2(FUNC5(tsd));
	*FUNC3(tsd) = true;
	*FUNC6(tsd) = false;
	*FUNC4(tsd) = 1;
	FUNC1(tsd);

	return false;
}