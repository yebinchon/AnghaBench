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
typedef  scalar_t__ WCHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const) ; 

__attribute__((used)) static const WCHAR* FUNC1(const WCHAR* haystack, const WCHAR* needle)
{
    const WCHAR *h,*n;
    WCHAR first;

    if (!*needle)
        return haystack;

    /* Special case the first character because
     * we will be doing a lot of comparisons with it.
     */
    first=FUNC0(*needle);
    needle++;
    while (*haystack)
    {
        while (FUNC0(*haystack)!=first && *haystack)
            haystack++;

        h=haystack+1;
        n=needle;
        while (FUNC0(*h)==FUNC0(*n) && *h)
        {
            h++;
            n++;
        }
        if (!*n)
            return haystack;
        haystack++;
    }
    return NULL;
}