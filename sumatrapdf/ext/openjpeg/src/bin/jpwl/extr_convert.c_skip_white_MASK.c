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
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static char *FUNC1(char *s)
{
    while (*s) {
        if (*s == '\n' || *s == '\r') {
            return NULL;
        }
        if (FUNC0(*s)) {
            ++s;
            continue;
        }
        return s;
    }
    return NULL;
}