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
 char* FUNC1 (size_t) ; 
 char* FUNC2 (char*,char const*) ; 
 size_t FUNC3 (char const*) ; 

char *FUNC4(const char *s, unsigned n) {
        size_t l;
        char *r, *p;
        unsigned i;

        FUNC0(s);

        l = FUNC3(s);
        p = r = FUNC1(l * n + 1);
        if (!r)
                return NULL;

        for (i = 0; i < n; i++)
                p = FUNC2(p, s);

        *p = 0;
        return r;
}