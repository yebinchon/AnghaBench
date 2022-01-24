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
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*) ; 

char *FUNC5(const char *p, const char *prefix) {
        FUNC0(p);

        /* Makes every item in the list an absolute path by prepending
         * the prefix, if specified and necessary */

        if (FUNC2(p) || FUNC1(prefix))
                return FUNC4(p);

        return FUNC3(prefix, p);
}