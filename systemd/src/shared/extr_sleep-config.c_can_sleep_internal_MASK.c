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
typedef  int /*<<< orphan*/  SleepConfig ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/  const*,int*,char***,char***) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(const char *verb, bool check_allowed, const SleepConfig *sleep_config) {
        bool allow;
        char **modes = NULL, **states = NULL;
        int r;

        FUNC1(FUNC0(verb, "suspend", "hibernate", "hybrid-sleep", "suspend-then-hibernate"));

        r = FUNC7(verb, sleep_config, &allow, &modes, &states);
        if (r < 0)
                return false;

        if (check_allowed && !allow) {
                FUNC6("Sleep mode \"%s\" is disabled by configuration.", verb);
                return false;
        }

        if (FUNC8(verb, "suspend-then-hibernate"))
                return FUNC2(sleep_config);

        if (!FUNC4(states) || !FUNC3(modes))
                return false;

        if (FUNC8(verb, "suspend"))
                return true;

        if (!FUNC5())
                return -ENOSPC;

        return true;
}