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
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,char) ; 

DWORD FUNC4(LPCWSTR p)
{
    DWORD major, minor = 0, build = 0, version = 0;

    if (!p)
        return version;

    major = FUNC2(p);

    p = FUNC3(p, '.');
    if (p)
    {
        minor = FUNC2(p+1);
        p = FUNC3(p+1, '.');
        if (p)
            build = FUNC2(p+1);
    }

    return FUNC0(build, FUNC1(minor, major));
}