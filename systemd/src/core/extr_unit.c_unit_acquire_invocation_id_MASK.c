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
typedef  int /*<<< orphan*/  sd_id128_t ;
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(Unit *u) {
        sd_id128_t id;
        int r;

        FUNC0(u);

        r = FUNC2(&id);
        if (r < 0)
                return FUNC1(u, r, "Failed to generate invocation ID for unit: %m");

        r = FUNC4(u, id);
        if (r < 0)
                return FUNC1(u, r, "Failed to set invocation ID for unit: %m");

        FUNC3(u);
        return 0;
}