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
 int /*<<< orphan*/  VALID_CHARS ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const) ; 

__attribute__((used)) static char *FUNC4(const char *f, char *t) {
        FUNC1(f);
        FUNC1(t);

        /* do not create units with a leading '.', like for "/.dotdir" mount points */
        if (*f == '.') {
                t = FUNC2(*f, t);
                f++;
        }

        for (; *f; f++) {
                if (*f == '/')
                        *(t++) = '-';
                else if (FUNC0(*f, '-', '\\') || !FUNC3(VALID_CHARS, *f))
                        t = FUNC2(*f, t);
                else
                        *(t++) = *f;
        }

        return t;
}