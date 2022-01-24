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
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static bool FUNC3(const char *field) {
        const char *p;

        FUNC0(field);

        if (FUNC1(field))
                return false;

        if (FUNC2(field, "__"))
                return false;

        for (p = field; *p; p++) {

                if (*p == '_')
                        continue;

                if (*p >= 'A' && *p <= 'Z')
                        continue;

                if (*p >= '0' && *p <= '9')
                        continue;

                return false;
        }

        return true;
}