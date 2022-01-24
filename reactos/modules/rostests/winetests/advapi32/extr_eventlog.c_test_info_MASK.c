#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_3__ {int dwFull; } ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  TYPE_1__ EVENTLOG_FULL_INFORMATION ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_LEVEL ; 
 int EVENTLOG_FULL_INFO ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ RPC_X_NULL_REF_POINTER ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    HANDLE handle;
    BOOL ret;
    DWORD needed;
    BYTE buffer[2 * sizeof(EVENTLOG_FULL_INFORMATION)];
    EVENTLOG_FULL_INFORMATION *efi = (void *)buffer;

    if (!&pGetEventLogInformation)
    {
        /* NT4 */
        FUNC6("GetEventLogInformation is not available\n");
        return;
    }
    FUNC3(0xdeadbeef);
    ret = FUNC5(NULL, 1, NULL, 0, NULL);
    FUNC4(!ret, "Expected failure\n");
    FUNC4(FUNC1() == ERROR_INVALID_LEVEL, "Expected ERROR_INVALID_LEVEL, got %d\n", FUNC1());

    FUNC3(0xdeadbeef);
    ret = FUNC5(NULL, EVENTLOG_FULL_INFO, NULL, 0, NULL);
    FUNC4(!ret, "Expected failure\n");
    FUNC4(FUNC1() == ERROR_INVALID_HANDLE, "Expected ERROR_INVALID_HANDLE, got %d\n", FUNC1());

    handle = FUNC2(NULL, "Application");

    FUNC3(0xdeadbeef);
    ret = FUNC5(handle, EVENTLOG_FULL_INFO, NULL, 0, NULL);
    FUNC4(!ret, "Expected failure\n");
    FUNC4(FUNC1() == RPC_X_NULL_REF_POINTER, "Expected RPC_X_NULL_REF_POINTER, got %d\n", FUNC1());

    FUNC3(0xdeadbeef);
    ret = FUNC5(handle, EVENTLOG_FULL_INFO, NULL, 0, &needed);
    FUNC4(!ret, "Expected failure\n");
    FUNC4(FUNC1() == RPC_X_NULL_REF_POINTER, "Expected RPC_X_NULL_REF_POINTER, got %d\n", FUNC1());

    FUNC3(0xdeadbeef);
    ret = FUNC5(handle, EVENTLOG_FULL_INFO, efi, 0, NULL);
    FUNC4(!ret, "Expected failure\n");
    FUNC4(FUNC1() == RPC_X_NULL_REF_POINTER, "Expected RPC_X_NULL_REF_POINTER, got %d\n", FUNC1());

    FUNC3(0xdeadbeef);
    needed = 0xdeadbeef;
    efi->dwFull = 0xdeadbeef;
    ret = FUNC5(handle, EVENTLOG_FULL_INFO, efi, 0, &needed);
    FUNC4(!ret, "Expected failure\n");
    FUNC4(FUNC1() == ERROR_INSUFFICIENT_BUFFER, "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", FUNC1());
    FUNC4(needed == sizeof(EVENTLOG_FULL_INFORMATION), "Expected sizeof(EVENTLOG_FULL_INFORMATION), got %d\n", needed);
    FUNC4(efi->dwFull == 0xdeadbeef, "Expected no change to the dwFull member\n");

    /* Not that we care, but on success last error is set to ERROR_IO_PENDING */
    efi->dwFull = 0xdeadbeef;
    needed = sizeof(buffer);
    ret = FUNC5(handle, EVENTLOG_FULL_INFO, efi, needed, &needed);
    FUNC4(ret, "Expected success\n");
    FUNC4(needed == sizeof(EVENTLOG_FULL_INFORMATION), "Expected sizeof(EVENTLOG_FULL_INFORMATION), got %d\n", needed);
    FUNC4(efi->dwFull == 0 || efi->dwFull == 1, "Expected 0 (not full) or 1 (full), got %d\n", efi->dwFull);

    FUNC0(handle);
}