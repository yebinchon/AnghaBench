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
 char* FUNC0 (char const*,char,size_t) ; 

__attribute__((used)) static void FUNC1(unsigned *line, const char *s, size_t n) {
        const char *p = s;

        if (!line)
                return;

        for (;;) {
                const char *f;

                f = FUNC0(p, '\n', n);
                if (!f)
                        return;

                n -= (f - p) + 1;
                p = f + 1;
                (*line)++;
        }
}