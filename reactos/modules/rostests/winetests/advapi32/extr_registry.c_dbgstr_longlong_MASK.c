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
typedef  int /*<<< orphan*/  ll ;
typedef  int ULONGLONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long,...) ; 

__attribute__((used)) static const char *FUNC1(ULONGLONG ll)
{
    static char buf[16][64];
    static int idx;

    idx &= 0x0f;

    if (sizeof(ll) > sizeof(unsigned long) && ll >> 32)
        FUNC0(buf[idx], "0x%lx%08lx", (unsigned long)(ll >> 32), (unsigned long)ll);
    else
        FUNC0(buf[idx], "0x%08lx", (unsigned long)ll);

    return buf[idx++];
}