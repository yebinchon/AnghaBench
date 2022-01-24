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
 int FUNC1 (char const*,size_t) ; 

char *FUNC2(const char *str) {
        const char *p;

        FUNC0(str);

        p = str;
        while (*p) {
                int len;

                len = FUNC1(p, (size_t) -1);
                if (len < 0)
                        return NULL;

                p += len;
        }

        return (char*) str;
}