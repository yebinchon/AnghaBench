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
typedef  scalar_t__ ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

void
FUNC2()
{
    char buffer[64];

    FUNC1(buffer, "%p", (void*)(ptrdiff_t)0x123abc);
    FUNC0(buffer, "00123ABC");

    FUNC1(buffer, "%#p", (void*)(ptrdiff_t)0x123abc);
    FUNC0(buffer, "0X00123ABC");

    FUNC1(buffer, "%#012p", (void*)(ptrdiff_t)0x123abc);
    FUNC0(buffer, "  0X00123ABC");

    FUNC1(buffer, "%9p", (void*)(ptrdiff_t)0x123abc);
    FUNC0(buffer, " 00123ABC");

    FUNC1(buffer, "%09p", (void*)(ptrdiff_t)0x123abc);
    FUNC0(buffer, " 00123ABC");

    FUNC1(buffer, "% 9p", (void*)(ptrdiff_t)0x123abc);
    FUNC0(buffer, " 00123ABC");

    FUNC1(buffer, "%-9p", (void*)(ptrdiff_t)0x123abc);
    FUNC0(buffer, "00123ABC ");

    FUNC1(buffer, "%4p", (void*)(ptrdiff_t)0x123abc);
    FUNC0(buffer, "00123ABC");

    FUNC1(buffer, "%9.4p", (void*)(ptrdiff_t)0x123abc);
    FUNC0(buffer, " 00123ABC");

    FUNC1(buffer, "%I64p", 0x123abc456789ULL);
    FUNC0(buffer, "123ABC456789");

    FUNC1(buffer, "%hp", 0x123abc);
    FUNC0(buffer, "00003ABC");

}