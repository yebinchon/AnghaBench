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
typedef  int ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    ULONG longs[3];

    if (!&pSwapPlong)
    {
        FUNC2("SwapPlong is not available\n");
        return;
    }

    longs[0] = 0xffff0001;
    longs[1] = 0x1000ffff;
    longs[2] = 0x20000001;
    FUNC1(longs, 2);
    FUNC0((longs[0] == 0x0100ffff && longs[1] == 0xffff0010 && longs[2] == 0x20000001),
       "Expected {0x0100ffff,0xffff0010,0x20000001}, got {0x%08x,0x%08x,0x%08x}\n",
       longs[0], longs[1], longs[2]);
}