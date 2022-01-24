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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4 (const char *dira, const char *dirb)
{
    char *a, *b;
    char *p1, *p2;
    int ret = 0;

    a = FUNC1(dira);
    b = FUNC1(dirb);
    FUNC3 (a);
    FUNC3 (b);

    p1 = a;
    p2 = b;
    while (*p1 != 0 && *p2 != 0) {
        /* Go to the last one in a path separator sequence. */
        while (FUNC2(*p1) && FUNC2(p1[1]))
            ++p1;
        while (FUNC2(*p2) && FUNC2(p2[1]))
            ++p2;

        if (!(FUNC2(*p1) && FUNC2(*p2)) && *p1 != *p2)
            goto out;

        ++p1;
        ++p2;
    }

    /* Example:
     *            p1
     * a: /abc/def/ghi
     *            p2
     * b: /abc/def
     */
    if (*p1 == 0 && *p2 == 0)
        ret = -1;
    else if (*p1 != 0 && FUNC2(*p1))
        ret = 1;
    else if (*p2 != 0 && FUNC2(*p2))
        ret = -1;

out:
    FUNC0 (a);
    FUNC0 (b);
    return ret;
}