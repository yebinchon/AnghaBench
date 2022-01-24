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
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  ts ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  UnitWriteFlags ;
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int FORMAT_TIMESPAN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USEC_INFINITY ; 
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char* FUNC5 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*,char*,int /*<<< orphan*/ ) ; 

int FUNC7(
                Unit *u,
                const char *name,
                usec_t *p,
                bool fix_0,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        uint64_t v;
        int r;

        FUNC1(p);

        r = FUNC3(message, "t", &v);
        if (r < 0)
                return r;

        if (!FUNC0(flags)) {
                char *n, ts[FORMAT_TIMESPAN_MAX];

                if (fix_0)
                        *p = v != 0 ? v: USEC_INFINITY;
                else
                        *p = v;

                n = FUNC5(name, FUNC4(name) - 4);
                FUNC6(u, flags, name, "%sSec=%s", n,
                                    FUNC2(ts, sizeof(ts), v, USEC_PER_MSEC));
        }

        return 1;
}