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
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 int FUNC1 (char const*,size_t) ; 

__attribute__((used)) static void FUNC2(unsigned *line, unsigned *column, const char *s, size_t n) {
        FUNC0(line);
        FUNC0(column);
        FUNC0(s || n == 0);

        while (n > 0) {
                if (*s == '\n') {
                        (*line)++;
                        *column = 1;
                } else if ((signed char) *s >= 0 && *s < 127) /* Process ASCII chars quickly */
                        (*column)++;
                else {
                        int w;

                        w = FUNC1(s, n);
                        if (w < 0) /* count invalid unichars as normal characters */
                                w = 1;
                        else if ((size_t) w > n) /* never read more than the specified number of characters */
                                w = (int) n;

                        (*column)++;

                        s += w;
                        n -= w;
                        continue;
                }

                s++;
                n--;
        }
}