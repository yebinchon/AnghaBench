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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 

int FUNC4(const char *name, const char *expected_value, bool only_value, const char *value) {
        FUNC0(name);

        if (expected_value && !FUNC3(expected_value, value))
                return 0;

        if (only_value)
                FUNC2(value);
        else
                FUNC1("%s=%s\n", name, value);

        return 0;
}