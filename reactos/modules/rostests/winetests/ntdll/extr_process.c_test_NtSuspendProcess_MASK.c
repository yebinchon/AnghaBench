#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  startup ;
typedef  int ULONG ;
struct TYPE_10__ {scalar_t__ dwDebugEventCode; int /*<<< orphan*/  dwThreadId; int /*<<< orphan*/  dwProcessId; } ;
struct TYPE_9__ {int /*<<< orphan*/  hThread; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  dwProcessId; } ;
struct TYPE_8__ {int cb; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  TYPE_3__ DEBUG_EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  DBG_CONTINUE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int MAX_PATH ; 
 int FUNC7 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ OUTPUT_DEBUG_STRING_EVENT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WAIT_OBJECT_0 ; 
 int WAIT_TIMEOUT ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*) ; 

__attribute__((used)) static void FUNC18(char *process_name)
{
    PROCESS_INFORMATION info;
    DEBUG_EVENT ev;
    STARTUPINFOA startup;
    NTSTATUS status;
    HANDLE event;
    char buffer[MAX_PATH];
    ULONG count;
    DWORD ret;

    status = FUNC14(FUNC5());
    FUNC13(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    event = FUNC2(NULL, TRUE, FALSE, "wine_suspend_event");
    FUNC13(!!event, "Failed to create event: %u\n", FUNC6());

    FUNC12(&startup, 0, sizeof(startup));
    startup.cb = sizeof(startup);

    FUNC17(buffer, "%s tests/process.c dummy_process wine_suspend_event", process_name);
    ret = FUNC3(NULL, buffer, NULL, NULL, FALSE, 0, NULL, NULL, &startup, &info);
    FUNC13(ret, "CreateProcess failed with error %u\n", FUNC6());

    ret = FUNC11(event, 500);
    FUNC13(ret == WAIT_OBJECT_0, "Event was not signaled: %d\n", ret);

    status = FUNC15(info.hProcess);
    FUNC13(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    FUNC8(event);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = FUNC7(info.hThread, &count);
    FUNC13(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);
    FUNC13(count == 1, "Expected count 1, got %d\n", count);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_OBJECT_0, "Event was not signaled: %d\n", ret);

    status = FUNC14(info.hProcess);
    FUNC13(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    status = FUNC16(info.hThread, &count);
    FUNC13(status == STATUS_SUCCESS, "NtSuspendThread failed: %x\n", status);
    FUNC13(count == 0, "Expected count 0, got %d\n", count);

    FUNC8(event);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = FUNC14(info.hProcess);
    FUNC13(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_OBJECT_0, "Event was not signaled: %d\n", ret);

    status = FUNC16(info.hThread, &count);
    FUNC13(status == STATUS_SUCCESS, "NtSuspendThread failed: %x\n", status);
    FUNC13(count == 0, "Expected count 0, got %d\n", count);

    status = FUNC16(info.hThread, &count);
    FUNC13(status == STATUS_SUCCESS, "NtSuspendThread failed: %x\n", status);
    FUNC13(count == 1, "Expected count 1, got %d\n", count);

    FUNC8(event);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = FUNC14(info.hProcess);
    FUNC13(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = FUNC14(info.hProcess);
    FUNC13(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_OBJECT_0, "Event was not signaled: %d\n", ret);

    ret = FUNC4(info.dwProcessId);
    FUNC13(ret, "Failed to debug process: %d\n", FUNC6());

    FUNC8(event);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    for (;;)
    {
        ret = FUNC10(&ev, INFINITE);
        FUNC13(ret, "WaitForDebugEvent failed, last error %#x.\n", FUNC6());
        if (!ret) break;

        if (ev.dwDebugEventCode == OUTPUT_DEBUG_STRING_EVENT) break;

        ret = FUNC1(ev.dwProcessId, ev.dwThreadId, DBG_CONTINUE);
        FUNC13(ret, "ContinueDebugEvent failed, last error %#x.\n", FUNC6());
        if (!ret) break;
    }

    FUNC8(event);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = FUNC14(info.hProcess);
    FUNC13(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = FUNC7(info.hThread, &count);
    FUNC13(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);
    FUNC13(count == 0, "Expected count 0, got %d\n", count);

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    ret = FUNC1(ev.dwProcessId, ev.dwThreadId, DBG_CONTINUE);
    FUNC13(ret, "ContinueDebugEvent failed, last error %#x.\n", FUNC6());

    ret = FUNC11(event, 200);
    FUNC13(ret == WAIT_OBJECT_0, "Event was not signaled: %d\n", ret);

    FUNC9(info.hProcess, 0);

    FUNC0(info.hProcess);
    FUNC0(info.hThread);
}