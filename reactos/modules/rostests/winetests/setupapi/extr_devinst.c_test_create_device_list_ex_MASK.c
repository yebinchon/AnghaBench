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
typedef  char WCHAR ;
typedef  scalar_t__ HDEVINFO ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_INVALID_MACHINENAME ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_MACHINE_UNAVAILABLE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    static const WCHAR machine[] = { 'd','u','m','m','y',0 };
    static const WCHAR empty[] = { 0 };
    static char notnull[] = "NotNull";
    HDEVINFO set;
    BOOL ret;

    FUNC1(0xdeadbeef);
    set = FUNC2(NULL, NULL, NULL, notnull);
    FUNC4(set == INVALID_HANDLE_VALUE, "Expected failure.\n");
    FUNC4(FUNC0() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", FUNC0());

    FUNC1(0xdeadbeef);
    set = FUNC2(NULL, NULL, machine, NULL);
    FUNC4(set == INVALID_HANDLE_VALUE, "Expected failure.\n");
    FUNC4(FUNC0() == ERROR_INVALID_MACHINENAME
            || FUNC0() == ERROR_MACHINE_UNAVAILABLE
            || FUNC0() == ERROR_CALL_NOT_IMPLEMENTED,
            "Got unexpected error %#x.\n", FUNC0());

    set = FUNC2(NULL, NULL, NULL, NULL);
    FUNC4(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.", FUNC0());

    ret = FUNC3(set);
    FUNC4(ret, "Failed to destroy device list, error %#x.\n", FUNC0());

    set = FUNC2(NULL, NULL, empty, NULL);
    FUNC4(set != INVALID_HANDLE_VALUE, "Failed to create device list, error %#x.", FUNC0());

    ret = FUNC3(set);
    FUNC4(ret, "Failed to destroy device list, error %#x.\n", FUNC0());
}