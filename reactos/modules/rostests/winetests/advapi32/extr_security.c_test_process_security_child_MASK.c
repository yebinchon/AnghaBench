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
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DUPLICATE_SAME_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PROCESS_ALL_ACCESS ; 
 int /*<<< orphan*/  PROCESS_ALL_ACCESS_NT4 ; 
 int PROCESS_QUERY_LIMITED_INFORMATION ; 
 int PROCESS_TERMINATE ; 
 int PROCESS_VM_READ ; 
 int SPECIFIC_RIGHTS_ALL ; 
 int STANDARD_RIGHTS_ALL ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THREAD_SET_THREAD_TOKEN ; 
 int /*<<< orphan*/  THREAD_TERMINATE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 

__attribute__((used)) static void FUNC12(void)
{
    HANDLE handle, handle1;
    BOOL ret;
    DWORD err;

    handle = FUNC6( PROCESS_TERMINATE, FALSE, FUNC3() );
    FUNC11(handle != NULL, "OpenProcess(PROCESS_TERMINATE) with err:%d\n", FUNC5());
    FUNC9( handle, PROCESS_TERMINATE );

    ret = FUNC1( FUNC2(), handle, FUNC2(),
                           &handle1, 0, TRUE, DUPLICATE_SAME_ACCESS );
    FUNC11(ret, "duplicating handle err:%d\n", FUNC5());
    FUNC9( handle1, PROCESS_TERMINATE );

    FUNC0( handle1 );

    FUNC8( 0xdeadbeef );
    ret = FUNC1( FUNC2(), handle, FUNC2(),
                           &handle1, PROCESS_ALL_ACCESS, TRUE, 0 );
    err = FUNC5();
    FUNC11(!ret && err == ERROR_ACCESS_DENIED, "duplicating handle should have failed "
       "with STATUS_ACCESS_DENIED, instead of err:%d\n", err);

    FUNC0( handle );

    /* These two should fail - they are denied by ACL */
    handle = FUNC6( PROCESS_VM_READ, FALSE, FUNC3() );
    FUNC11(handle == NULL, "OpenProcess(PROCESS_VM_READ) should have failed\n");
    handle = FUNC6( PROCESS_ALL_ACCESS, FALSE, FUNC3() );
    FUNC11(handle == NULL, "OpenProcess(PROCESS_ALL_ACCESS) should have failed\n");

    /* Documented privilege elevation */
    ret = FUNC1( FUNC2(), FUNC2(), FUNC2(),
                           &handle, 0, TRUE, DUPLICATE_SAME_ACCESS );
    FUNC11(ret, "duplicating handle err:%d\n", FUNC5());
    FUNC10( handle, PROCESS_ALL_ACCESS_NT4,
                          STANDARD_RIGHTS_ALL | SPECIFIC_RIGHTS_ALL );

    FUNC0( handle );

    /* Same only explicitly asking for all access rights */
    ret = FUNC1( FUNC2(), FUNC2(), FUNC2(),
                           &handle, PROCESS_ALL_ACCESS, TRUE, 0 );
    FUNC11(ret, "duplicating handle err:%d\n", FUNC5());
    FUNC10( handle, PROCESS_ALL_ACCESS_NT4,
                          PROCESS_ALL_ACCESS | PROCESS_QUERY_LIMITED_INFORMATION );
    ret = FUNC1( FUNC2(), handle, FUNC2(),
                           &handle1, PROCESS_VM_READ, TRUE, 0 );
    FUNC11(ret, "duplicating handle err:%d\n", FUNC5());
    FUNC9( handle1, PROCESS_VM_READ );
    FUNC0( handle1 );
    FUNC0( handle );

    /* Test thread security */
    handle = FUNC7( THREAD_TERMINATE, FALSE, FUNC4() );
    FUNC11(handle != NULL, "OpenThread(THREAD_TERMINATE) with err:%d\n", FUNC5());
    FUNC9( handle, PROCESS_TERMINATE );
    FUNC0( handle );

    handle = FUNC7( THREAD_SET_THREAD_TOKEN, FALSE, FUNC4() );
    FUNC11(handle == NULL, "OpenThread(THREAD_SET_THREAD_TOKEN) should have failed\n");
}