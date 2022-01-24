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
typedef  int /*<<< orphan*/  sd_lldp_callback_t ;
typedef  int /*<<< orphan*/  sd_lldp ;
typedef  int /*<<< orphan*/  sd_event ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(sd_lldp **lldp, sd_event *e, sd_lldp_callback_t cb, void *cb_data) {
        int r;

        r = FUNC1(lldp);
        if (r < 0)
                return r;

        r = FUNC3(*lldp, 42);
        if (r < 0)
                return r;

        r = FUNC2(*lldp, cb, cb_data);
        if (r < 0)
                return r;

        r = FUNC0(*lldp, e, 0);
        if (r < 0)
                return r;

        r = FUNC4(*lldp);
        if (r < 0)
                return r;

        return 0;
}