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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,char*,char const*,char const*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sd_bus_message *m, const char *field, const char *eq, uint64_t base) {
        uint64_t v;
        int r;

        r = FUNC2(eq, base, &v);
        if (r < 0)
                return FUNC1(r, "Failed to parse %s=%s: %m", field, eq);

        r = FUNC3(m, "(sv)", field, "t", v);
        if (r < 0)
                return FUNC0(r);

        return 1;
}