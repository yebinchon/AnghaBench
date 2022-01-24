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
typedef  char const FILE ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ LONG_LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

int FUNC5(FILE *f, const char *key, const char *value) {
        FUNC0(f);
        FUNC0(key);

        if (!value)
                return 0;

        /* Make sure that anything we serialize we can also read back again with read_line() with a maximum line size
         * of LONG_LINE_MAX. This is a safety net only. All code calling us should filter this out earlier anyway. */
        if (FUNC4(key) + 1 + FUNC4(value) + 1 > LONG_LINE_MAX) {
                FUNC3("Attempted to serialize overly long item '%s', refusing.", key);
                return -EINVAL;
        }

        FUNC2(key, f);
        FUNC1('=', f);
        FUNC2(value, f);
        FUNC1('\n', f);

        return 1;
}