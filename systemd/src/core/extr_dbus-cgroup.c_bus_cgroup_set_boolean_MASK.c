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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  UnitWriteFlags ;
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/  CGroupMask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(
                Unit *u,
                const char *name,
                bool *p,
                CGroupMask mask,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        int b, r;

        FUNC1(p);

        r = FUNC2(message, "b", &b);
        if (r < 0)
                return r;

        if (!FUNC0(flags)) {
                *p = b;
                FUNC3(u, mask);
                FUNC4(u, flags, name, "%s=%s", name, FUNC5(b));
        }

        return 1;
}