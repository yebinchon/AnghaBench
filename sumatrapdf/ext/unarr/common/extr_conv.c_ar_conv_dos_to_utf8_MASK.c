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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * gCp437 ; 
 char* FUNC1 (size_t) ; 

char *FUNC2(const char *astr)
{
    char *str, *out;
    const char *in;
    size_t size;

    size = 0;
    for (in = astr; *in; in++) {
        char buf[4];
        size += FUNC0(gCp437[(uint8_t)*in], buf, sizeof(buf));
    }

    if (size == (size_t)-1)
        return NULL;
    str = FUNC1(size + 1);
    if (!str)
        return NULL;

    for (in = astr, out = str; *in; in++) {
        out += FUNC0(gCp437[(uint8_t)*in], out, str + size - out);
    }
    *out = '\0';

    return str;
}