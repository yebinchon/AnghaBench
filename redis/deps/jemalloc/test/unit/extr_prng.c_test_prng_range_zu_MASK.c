#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  atomic_zu_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 size_t MAX_RANGE ; 
 unsigned int NREPS ; 
 scalar_t__ RANGE_STEP ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,size_t,int) ; 

__attribute__((used)) static void
FUNC3(bool atomic) {
	size_t range;
#define MAX_RANGE	10000000
#define RANGE_STEP	97
#define NREPS		10

	for (range = 2; range < MAX_RANGE; range += RANGE_STEP) {
		atomic_zu_t s;
		unsigned rep;

		FUNC1(&s, range, ATOMIC_RELAXED);
		for (rep = 0; rep < NREPS; rep++) {
			size_t r = FUNC2(&s, range, atomic);

			FUNC0(r, range, "Out of range");
		}
	}
}