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
 int /*<<< orphan*/  WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 size_t FUNC2 (char const*,int /*<<< orphan*/ ) ; 

size_t FUNC3(const char *str, char *to, size_t len) {
        bool is_space = false;
        size_t i, j;

        FUNC0(str);
        FUNC0(to);

        i = FUNC2(str, WHITESPACE);

        for (j = 0; j < len && i < len && str[i] != '\0'; i++) {
                if (FUNC1(str[i])) {
                        is_space = true;
                        continue;
                }

                if (is_space) {
                        if (j + 1 >= len)
                                break;

                        to[j++] = '_';
                        is_space = false;
                }
                to[j++] = str[i];
        }

        to[j] = '\0';
        return j;
}