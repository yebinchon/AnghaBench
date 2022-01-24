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
typedef  scalar_t__ gboolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int,char const**) ; 

void
FUNC1 (char *data, int len)
{
    const char *s, *e;
    char *p;
    gboolean is_valid;

    s = data;
    p = data;

    while ((s - data) != len) {
        is_valid = FUNC0 (s, len - (s - data), &e);
        if (is_valid)
            break;

        if (s != e)
            p += (e - s);
        *p = '?';
        ++p;
        s = e + 1;
    }
}