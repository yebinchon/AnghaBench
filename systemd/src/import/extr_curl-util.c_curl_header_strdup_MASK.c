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
 int ENOMEM ; 
 int /*<<< orphan*/  WHITESPACE ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC1 (void const*,size_t,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const) ; 
 char* FUNC3 (char const*,size_t) ; 

int FUNC4(const void *contents, size_t sz, const char *field, char **value) {
        const char *p;
        char *s;

        p = FUNC1(contents, sz, field);
        if (!p)
                return 0;

        sz -= p - (const char*) contents;

        if (FUNC0(p, 0, sz))
                return 0;

        /* Skip over preceding whitespace */
        while (sz > 0 && FUNC2(WHITESPACE, p[0])) {
                p++;
                sz--;
        }

        /* Truncate trailing whitespace */
        while (sz > 0 && FUNC2(WHITESPACE, p[sz-1]))
                sz--;

        s = FUNC3(p, sz);
        if (!s)
                return -ENOMEM;

        *value = s;
        return 1;
}