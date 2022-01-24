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
typedef  int ULONG_PTR ;
typedef  char TCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 

__attribute__((used)) static ULONG_PTR FUNC1(const TCHAR *s)
{
    ULONG_PTR res;
    ULONG_PTR n;
    const TCHAR *p;

    for (p = s; *p; p++)
        if (!FUNC0(*p))
            break;

    p--;
    res = 0;

    for (n = 1; p >= s; p--, n *= 10)
        res += (*p - '0') * n;

    return res;
}