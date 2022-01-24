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
 scalar_t__ FUNC0 (char const,char,char) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const) ; 

__attribute__((used)) static char *FUNC3(char *t, const char *s, const char *bad, bool escape_tab_nl) {
        FUNC1(bad);

        for (; *s; s++) {
                if (escape_tab_nl && FUNC0(*s, '\n', '\t')) {
                        *(t++) = '\\';
                        *(t++) = *s == '\n' ? 'n' : 't';
                        continue;
                }

                if (*s == '\\' || FUNC2(bad, *s))
                        *(t++) = '\\';

                *(t++) = *s;
        }

        return t;
}