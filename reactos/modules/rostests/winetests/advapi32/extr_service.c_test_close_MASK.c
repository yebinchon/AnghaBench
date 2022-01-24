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
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    SC_HANDLE handle;
    BOOL ret;

    /* NULL handle */
    FUNC3(0xdeadbeef);
    ret = FUNC0(NULL);
    FUNC4(!ret, "Expected failure\n");
    FUNC4(FUNC1() == ERROR_INVALID_HANDLE, "Expected ERROR_INVALID_HANDLE, got %d\n", FUNC1());

    /* TODO: Add some tests with invalid handles. These produce errors on Windows but crash on Wine */

    /* Proper call */
    handle = FUNC2(NULL, NULL, SC_MANAGER_CONNECT);
    FUNC3(0xdeadbeef);
    ret = FUNC0(handle);
    FUNC4(ret, "Expected success got error %u\n", FUNC1());
}