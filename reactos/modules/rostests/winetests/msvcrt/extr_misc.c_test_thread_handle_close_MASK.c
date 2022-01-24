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
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int WAIT_OBJECT_0 ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  test_thread_func ; 
 int /*<<< orphan*/  test_thread_func_ex ; 

__attribute__((used)) static void FUNC6(void)
{
    HANDLE hThread;
    DWORD ret;

    /* _beginthread: handle is not closed on ExitThread and _endthreadex */
    hThread = (HANDLE)FUNC3(test_thread_func, 0, NULL);
    FUNC5(hThread != INVALID_HANDLE_VALUE, "_beginthread failed (%d)\n", errno);
    FUNC2(hThread, INFINITE);
    ret = FUNC0(hThread);
    FUNC5(!ret, "ret = %d\n", ret);

    hThread = (HANDLE)FUNC3(test_thread_func, 0, (void*)1);
    FUNC5(hThread != INVALID_HANDLE_VALUE, "_beginthread failed (%d)\n", errno);
    FUNC2(hThread, INFINITE);
    ret = FUNC0(hThread);
    FUNC5(!ret, "ret = %d\n", ret);

    hThread = (HANDLE)FUNC3(test_thread_func, 0, (void*)2);
    FUNC5(hThread != INVALID_HANDLE_VALUE, "_beginthread failed (%d)\n", errno);
    FUNC1(150);
    ret = FUNC2(hThread, INFINITE);
    FUNC5(ret == WAIT_OBJECT_0, "ret = %d\n", ret);
    ret = FUNC0(hThread);
    FUNC5(ret, "ret = %d\n", ret);

    hThread = (HANDLE)FUNC3(test_thread_func, 0, (void*)3);
    FUNC5(hThread != INVALID_HANDLE_VALUE, "_beginthread failed (%d)\n", errno);
    FUNC1(150);
    ret = FUNC2(hThread, INFINITE);
    FUNC5(ret == WAIT_OBJECT_0, "ret = %d\n", ret);
    ret = FUNC0(hThread);
    FUNC5(ret, "ret = %d\n", ret);

    /* _beginthreadex: handle is not closed on _endthread */
    hThread = (HANDLE)FUNC4(NULL,0, test_thread_func_ex, NULL, 0, NULL);
    FUNC5(hThread != NULL, "_beginthreadex failed (%d)\n", errno);
    FUNC1(150);
    ret = FUNC2(hThread, INFINITE);
    FUNC5(ret == WAIT_OBJECT_0, "ret = %d\n", ret);
    ret = FUNC0(hThread);
    FUNC5(ret, "ret = %d\n", ret);
}