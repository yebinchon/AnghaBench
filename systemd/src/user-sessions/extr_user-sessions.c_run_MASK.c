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

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(int argc, char *argv[]) {
        int r, k;

        if (argc != 2)
                return FUNC2(FUNC0(EINVAL),
                                       "This program requires one argument.");

        FUNC3();

        FUNC6(0022);

        FUNC4();

        if (FUNC5(argv[1], "start")) {
                r = FUNC7("/run/nologin");
                k = FUNC7("/etc/nologin");
                if (r < 0)
                        return r;
                return k;

        } else if (FUNC5(argv[1], "stop"))
                return FUNC1();

        return FUNC2(FUNC0(EINVAL), "Unknown verb '%s'.", argv[1]);
}