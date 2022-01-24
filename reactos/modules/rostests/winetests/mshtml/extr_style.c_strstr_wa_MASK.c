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
typedef  scalar_t__* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 (char const*) ; 

__attribute__((used)) static const WCHAR *FUNC2(const WCHAR *str, const char *suba)
{
    BSTR sub;
    const WCHAR *ret = NULL;
    sub = FUNC1(suba);
    while (*str)
    {
        const WCHAR *p1 = str, *p2 = sub;
        while (*p1 && *p2 && *p1 == *p2) { p1++; p2++; }
        if (!*p2) {ret = str; break;}
        str++;
    }
    FUNC0(sub);
    return ret;
}