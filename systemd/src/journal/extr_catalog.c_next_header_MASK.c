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
 char* FUNC0 (char const*,char) ; 

__attribute__((used)) static bool FUNC1(const char **s) {
        const char *e;

        e = FUNC0(*s, '\n');

        /* Unexpected end */
        if (!e)
                return false;

        /* End of headers */
        if (e == *s)
                return false;

        *s = e + 1;
        return true;
}