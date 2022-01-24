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
 unsigned int FUNC0 (struct snprintf_test const*) ; 
 int FUNC1 (char*,int const,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,int const,...) ; 

__attribute__((used)) static void FUNC4 (void)
{
    struct snprintf_test {
        const char *format;
        int expected;
    };
    /* Pre-2.1 libc behaviour, not C99 compliant. */
    const struct snprintf_test tests[] = {{"short", 5},
                                          {"justfit", 7},
                                          {"justfits", 8},
                                          {"muchlonger", -1}};
    char buffer[8];
    const int bufsiz = sizeof buffer;
    unsigned int i;

    for (i = 0; i < FUNC0(tests); i++) {
        const char *fmt  = tests[i].format;
        const int expect = tests[i].expected;
        const int n      = FUNC1 (buffer, bufsiz, fmt);
        const int valid  = n < 0 ? bufsiz : (n == bufsiz ? n : n+1);

        FUNC3 (n == expect, "\"%s\": expected %d, returned %d\n",
            fmt, expect, n);
        FUNC3 (!FUNC2 (fmt, buffer, valid),
            "\"%s\": rendered \"%.*s\"\n", fmt, valid, buffer);
    }
}