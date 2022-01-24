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
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/ * Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ **,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(
                Manager *m,
                const char *name,
                const char *path,
                sd_bus_error *e,
                Unit **_ret) {

        int r;

        FUNC0(m);
        FUNC0(_ret);

        /* This will load the service information files, but not actually
         * start any services or anything. */

        r = FUNC2(m, name, path, e, _ret);
        if (r != 0)
                return r;

        FUNC1(m);

        *_ret = FUNC3(*_ret);
        return 0;
}