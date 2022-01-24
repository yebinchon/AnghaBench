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
 int /*<<< orphan*/  UTF8_REPLACEMENT_CHARACTER ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (char const*,size_t) ; 

char *FUNC7(const char *str) {
        char *p, *s;

        FUNC0(str);

        p = s = FUNC1(FUNC5(str) * 4 + 1);
        if (!p)
                return NULL;

        while (*str) {
                int len;

                len = FUNC6(str, (size_t) -1);
                if (len > 0) {
                        s = FUNC2(s, str, len);
                        str += len;
                } else {
                        s = FUNC3(s, UTF8_REPLACEMENT_CHARACTER);
                        str += 1;
                }
        }

        *s = '\0';
        (void) FUNC4(&p);
        return p;
}