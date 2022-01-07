
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int startup ;
typedef int ULONG ;
struct TYPE_10__ {scalar_t__ dwDebugEventCode; int dwThreadId; int dwProcessId; } ;
struct TYPE_9__ {int hThread; int hProcess; int dwProcessId; } ;
struct TYPE_8__ {int cb; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int DWORD ;
typedef TYPE_3__ DEBUG_EVENT ;


 int CloseHandle (int ) ;
 int ContinueDebugEvent (int ,int ,int ) ;
 int CreateEventA (int *,int ,int ,char*) ;
 int CreateProcessA (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int DBG_CONTINUE ;
 int DebugActiveProcess (int ) ;
 int FALSE ;
 int GetCurrentProcess () ;
 int GetLastError () ;
 int INFINITE ;
 int MAX_PATH ;
 int NtResumeThread (int ,int*) ;
 scalar_t__ OUTPUT_DEBUG_STRING_EVENT ;
 int ResetEvent (int ) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int TerminateProcess (int ,int ) ;
 int WAIT_OBJECT_0 ;
 int WAIT_TIMEOUT ;
 int WaitForDebugEvent (TYPE_3__*,int ) ;
 int WaitForSingleObject (int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,int) ;
 int pNtResumeProcess (int ) ;
 int pNtSuspendProcess (int ) ;
 int pNtSuspendThread (int ,int*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void test_NtSuspendProcess(char *process_name)
{
    PROCESS_INFORMATION info;
    DEBUG_EVENT ev;
    STARTUPINFOA startup;
    NTSTATUS status;
    HANDLE event;
    char buffer[MAX_PATH];
    ULONG count;
    DWORD ret;

    status = pNtResumeProcess(GetCurrentProcess());
    ok(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    event = CreateEventA(((void*)0), TRUE, FALSE, "wine_suspend_event");
    ok(!!event, "Failed to create event: %u\n", GetLastError());

    memset(&startup, 0, sizeof(startup));
    startup.cb = sizeof(startup);

    sprintf(buffer, "%s tests/process.c dummy_process wine_suspend_event", process_name);
    ret = CreateProcessA(((void*)0), buffer, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &startup, &info);
    ok(ret, "CreateProcess failed with error %u\n", GetLastError());

    ret = WaitForSingleObject(event, 500);
    ok(ret == WAIT_OBJECT_0, "Event was not signaled: %d\n", ret);

    status = pNtSuspendProcess(info.hProcess);
    ok(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    ResetEvent(event);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = NtResumeThread(info.hThread, &count);
    ok(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);
    ok(count == 1, "Expected count 1, got %d\n", count);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_OBJECT_0, "Event was not signaled: %d\n", ret);

    status = pNtResumeProcess(info.hProcess);
    ok(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    status = pNtSuspendThread(info.hThread, &count);
    ok(status == STATUS_SUCCESS, "NtSuspendThread failed: %x\n", status);
    ok(count == 0, "Expected count 0, got %d\n", count);

    ResetEvent(event);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = pNtResumeProcess(info.hProcess);
    ok(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_OBJECT_0, "Event was not signaled: %d\n", ret);

    status = pNtSuspendThread(info.hThread, &count);
    ok(status == STATUS_SUCCESS, "NtSuspendThread failed: %x\n", status);
    ok(count == 0, "Expected count 0, got %d\n", count);

    status = pNtSuspendThread(info.hThread, &count);
    ok(status == STATUS_SUCCESS, "NtSuspendThread failed: %x\n", status);
    ok(count == 1, "Expected count 1, got %d\n", count);

    ResetEvent(event);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = pNtResumeProcess(info.hProcess);
    ok(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = pNtResumeProcess(info.hProcess);
    ok(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_OBJECT_0, "Event was not signaled: %d\n", ret);

    ret = DebugActiveProcess(info.dwProcessId);
    ok(ret, "Failed to debug process: %d\n", GetLastError());

    ResetEvent(event);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    for (;;)
    {
        ret = WaitForDebugEvent(&ev, INFINITE);
        ok(ret, "WaitForDebugEvent failed, last error %#x.\n", GetLastError());
        if (!ret) break;

        if (ev.dwDebugEventCode == OUTPUT_DEBUG_STRING_EVENT) break;

        ret = ContinueDebugEvent(ev.dwProcessId, ev.dwThreadId, DBG_CONTINUE);
        ok(ret, "ContinueDebugEvent failed, last error %#x.\n", GetLastError());
        if (!ret) break;
    }

    ResetEvent(event);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = pNtResumeProcess(info.hProcess);
    ok(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    status = NtResumeThread(info.hThread, &count);
    ok(status == STATUS_SUCCESS, "NtResumeProcess failed: %x\n", status);
    ok(count == 0, "Expected count 0, got %d\n", count);

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_TIMEOUT, "Expected timeout, got: %d\n", ret);

    ret = ContinueDebugEvent(ev.dwProcessId, ev.dwThreadId, DBG_CONTINUE);
    ok(ret, "ContinueDebugEvent failed, last error %#x.\n", GetLastError());

    ret = WaitForSingleObject(event, 200);
    ok(ret == WAIT_OBJECT_0, "Event was not signaled: %d\n", ret);

    TerminateProcess(info.hProcess, 0);

    CloseHandle(info.hProcess);
    CloseHandle(info.hThread);
}
