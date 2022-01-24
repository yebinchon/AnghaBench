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
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char*,char const*) ; 
 size_t FUNC5 (char const*) ; 

char *FUNC6(const char *text, const char *old_string, const char *new_string) {
        size_t l, old_len, new_len, allocated = 0;
        char *t, *ret = NULL;
        const char *f;

        FUNC1(old_string);
        FUNC1(new_string);

        if (!text)
                return NULL;

        old_len = FUNC5(old_string);
        new_len = FUNC5(new_string);

        l = FUNC5(text);
        if (!FUNC0(ret, allocated, l+1))
                return NULL;

        f = text;
        t = ret;
        while (*f) {
                size_t d, nl;

                if (!FUNC3(f, old_string)) {
                        *(t++) = *(f++);
                        continue;
                }

                d = t - ret;
                nl = l - old_len + new_len;

                if (!FUNC0(ret, allocated, nl + 1))
                        return FUNC2(ret);

                l = nl;
                t = ret + d;

                t = FUNC4(t, new_string);
                f += old_len;
        }

        *t = 0;
        return ret;
}