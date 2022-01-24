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
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char*) ; 

__attribute__((used)) static int FUNC5(
                sd_bus *bus,
                const char *where) {

        int r;

        if (FUNC2(where, "/"))
                return FUNC1(FUNC0(EINVAL),
                                       "Refusing to operate on root directory: %s", where);

        if (!FUNC3(where))
                return FUNC1(FUNC0(EINVAL),
                                       "Path contains non-normalized components: %s", where);

        r = FUNC4(bus, where, ".mount");
        if (r < 0)
                return r;

        r = FUNC4(bus, where, ".automount");
        if (r < 0)
                return r;

        return 0;
}