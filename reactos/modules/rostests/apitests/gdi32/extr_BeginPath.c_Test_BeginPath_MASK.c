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
typedef  int /*<<< orphan*/  HDC ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ERROR_INVALID_HANDLE ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

void FUNC6()
{
    HDC hdc;
    BOOL ret;

    FUNC4(0);
    ret = FUNC0(0);
    FUNC5(ret == 0, "BeginPath(0) succeeded, ret == %d\n", ret);
    FUNC5(FUNC3() == ERROR_INVALID_HANDLE, "GetLastError() == %ld\n", FUNC3());

    hdc = FUNC1(NULL);

    FUNC4(0);
    ret = FUNC0(hdc);
    FUNC5(ret == 1, "BeginPath(hdc) failed, ret == %d\n", ret);
    FUNC5(FUNC3() == 0, "GetLastError() == %ld\n", FUNC3());

    FUNC2(hdc);

}