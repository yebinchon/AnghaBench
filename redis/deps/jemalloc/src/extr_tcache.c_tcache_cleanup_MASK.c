#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  tcache_t ;
struct TYPE_2__ {int /*<<< orphan*/ * avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ config_debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(tsd_t *tsd) {
	tcache_t *tcache = FUNC5(tsd);
	if (!FUNC1(tsd)) {
		FUNC0(FUNC4(tsd) == false);
		if (config_debug) {
			FUNC0(FUNC3(tcache, 0)->avail == NULL);
		}
		return;
	}
	FUNC0(FUNC4(tsd));
	FUNC0(FUNC3(tcache, 0)->avail != NULL);

	FUNC2(tsd, tcache, true);
	if (config_debug) {
		FUNC3(tcache, 0)->avail = NULL;
	}
}