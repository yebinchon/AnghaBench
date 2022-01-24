#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ state; } ;
typedef  TYPE_1__ tsd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ malloc_slow ; 
 scalar_t__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ tsd_state_minimal_initialized ; 
 void* tsd_state_nominal ; 
 scalar_t__ tsd_state_nominal_slow ; 
 scalar_t__ tsd_state_purgatory ; 
 scalar_t__ tsd_state_reincarnated ; 
 scalar_t__ tsd_state_uninitialized ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

tsd_t *
FUNC11(tsd_t *tsd, bool minimal) {
	FUNC0(!FUNC5(tsd));

	if (tsd->state == tsd_state_nominal_slow) {
		/* On slow path but no work needed. */
		FUNC0(malloc_slow || !FUNC10(tsd) ||
		    FUNC6(tsd) > 0 ||
		    *FUNC2(tsd));
	} else if (tsd->state == tsd_state_uninitialized) {
		if (!minimal) {
			tsd->state = tsd_state_nominal;
			FUNC9(tsd);
			/* Trigger cleanup handler registration. */
			FUNC8(tsd);
			FUNC3(tsd);
		} else {
			tsd->state = tsd_state_minimal_initialized;
			FUNC8(tsd);
			FUNC4(tsd);
		}
	} else if (tsd->state == tsd_state_minimal_initialized) {
		if (!minimal) {
			/* Switch to fully initialized. */
			tsd->state = tsd_state_nominal;
			FUNC0(*FUNC7(tsd) >= 1);
			(*FUNC7(tsd))--;
			FUNC9(tsd);
			FUNC3(tsd);
		} else {
			FUNC1(tsd);
		}
	} else if (tsd->state == tsd_state_purgatory) {
		tsd->state = tsd_state_reincarnated;
		FUNC8(tsd);
		FUNC4(tsd);
	} else {
		FUNC0(tsd->state == tsd_state_reincarnated);
	}

	return tsd;
}