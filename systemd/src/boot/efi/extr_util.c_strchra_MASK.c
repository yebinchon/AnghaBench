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
typedef  scalar_t__ CHAR8 ;

/* Variables and functions */

CHAR8 *FUNC0(CHAR8 *s, CHAR8 c) {
        do {
                if (*s == c)
                        return s;
        } while (*s++);
        return NULL;
}