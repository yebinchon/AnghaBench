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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char const*,char) ; 
 int FUNC3 (char*,size_t) ; 
 scalar_t__ FUNC4 (char,char const*) ; 

size_t FUNC5(char *str, const char *white) {
        size_t i = 0, replaced = 0;

        FUNC0(str);

        while (str[i] != '\0') {
                int len;

                if (FUNC4(str[i], white)) {
                        i++;
                        continue;
                }

                /* accept hex encoding */
                if (str[i] == '\\' && str[i+1] == 'x') {
                        i += 2;
                        continue;
                }

                /* accept valid utf8 */
                len = FUNC3(str + i, (size_t) -1);
                if (len > 1) {
                        i += len;
                        continue;
                }

                /* if space is allowed, replace whitespace with ordinary space */
                if (FUNC1(str[i]) && white && FUNC2(white, ' ')) {
                        str[i] = ' ';
                        i++;
                        replaced++;
                        continue;
                }

                /* everything else is replaced with '_' */
                str[i] = '_';
                i++;
                replaced++;
        }
        return replaced;
}