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
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int*,int,int*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static void FUNC4(void)
{
    DWORD pid, ret, cbUsed = 0xdeadbeef;

    FUNC2(0xdeadbeef);
    ret = FUNC0(NULL, 0, &cbUsed);
    FUNC3(ret == 1, "failed with %d\n", FUNC1());
    FUNC3(cbUsed == 0, "cbUsed=%d\n", cbUsed);

    FUNC2(0xdeadbeef);
    ret = FUNC0(&pid, 4, &cbUsed);
    FUNC3(ret == 1, "failed with %d\n", FUNC1());
    FUNC3(cbUsed == 4, "cbUsed=%d\n", cbUsed);
}