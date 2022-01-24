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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    BOOL ret;
    int test;

    if (!&pSystemFunction036)
    {
        FUNC5("SystemFunction036 is not available\n");
        return;
    }

    ret = FUNC3(NULL, 0);
    FUNC2(ret == TRUE, "Expected SystemFunction036 to return TRUE, got %d\n", ret);

    /* Test crashes on Windows. */
    if (0)
    {
        FUNC1(0xdeadbeef);
        ret = FUNC3(NULL, 5);
        FUNC4("ret = %d, GetLastError() = %d\n", ret, FUNC0());
    }

    ret = FUNC3(&test, 0);
    FUNC2(ret == TRUE, "Expected SystemFunction036 to return TRUE, got %d\n", ret);

    ret = FUNC3(&test, sizeof(int));
    FUNC2(ret == TRUE, "Expected SystemFunction036 to return TRUE, got %d\n", ret);
}