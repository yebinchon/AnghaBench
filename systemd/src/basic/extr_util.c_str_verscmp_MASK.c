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
 int FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int FUNC3 (char const*,char const*) ; 

int FUNC4(const char *s1, const char *s2) {
        const char *os1, *os2;

        FUNC0(s1);
        FUNC0(s2);

        os1 = s1;
        os2 = s2;

        while (*s1 || *s2) {
                int first;

                while ((*s1 && !FUNC2(*s1)) || (*s2 && !FUNC2(*s2))) {
                        int order;

                        order = FUNC1(*s1) - FUNC1(*s2);
                        if (order != 0)
                                return order;
                        s1++;
                        s2++;
                }

                while (*s1 == '0')
                        s1++;
                while (*s2 == '0')
                        s2++;

                first = 0;
                while (FUNC2(*s1) && FUNC2(*s2)) {
                        if (first == 0)
                                first = *s1 - *s2;
                        s1++;
                        s2++;
                }

                if (FUNC2(*s1))
                        return 1;
                if (FUNC2(*s2))
                        return -1;

                if (first != 0)
                        return first;
        }

        return FUNC3(os1, os2);
}