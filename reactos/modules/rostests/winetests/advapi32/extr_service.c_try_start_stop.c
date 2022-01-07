
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int statusproc ;
struct TYPE_5__ {int dwCurrentState; } ;
struct TYPE_4__ {scalar_t__ dwCurrentState; scalar_t__ dwProcessId; } ;
typedef TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef TYPE_2__ SERVICE_STATUS ;
typedef int SC_HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ControlService (int ,int ,TYPE_2__*) ;
 scalar_t__ ERROR_SERVICE_NOT_ACTIVE ;
 scalar_t__ GetLastError () ;
 int SC_STATUS_PROCESS_INFO ;
 int SERVICE_CONTROL_STOP ;
 scalar_t__ SERVICE_STOPPED ;
 int StartServiceA (int ,int ,int *) ;
 scalar_t__ broken (scalar_t__) ;
 int fprintf (int ,char*) ;
 int ok (int,char*,char const*,...) ;
 int pQueryServiceStatusEx (int ,int ,int *,int,scalar_t__*) ;
 int stdout ;

__attribute__((used)) static DWORD try_start_stop(SC_HANDLE svc_handle, const char* name, DWORD is_nt4)
{
    BOOL ret;
    DWORD le1, le2;
    SERVICE_STATUS status;




    ret = StartServiceA(svc_handle, 0, ((void*)0));
    le1 = GetLastError();
    ok(!ret, "%s: StartServiceA() should have failed\n", name);

    if (pQueryServiceStatusEx)
    {
        DWORD needed;
        SERVICE_STATUS_PROCESS statusproc;

        ret = pQueryServiceStatusEx(svc_handle, SC_STATUS_PROCESS_INFO, (BYTE*)&statusproc, sizeof(statusproc), &needed);
        ok(ret, "%s: QueryServiceStatusEx() failed le=%u\n", name, GetLastError());
        ok(statusproc.dwCurrentState == SERVICE_STOPPED, "%s: should be stopped state=%x\n", name, statusproc.dwCurrentState);
        ok(statusproc.dwProcessId == 0, "%s: ProcessId should be 0 instead of %x\n", name, statusproc.dwProcessId);
    }

    ret = StartServiceA(svc_handle, 0, ((void*)0));
    le2 = GetLastError();
    ok(!ret, "%s: StartServiceA() should have failed\n", name);
    ok(le2 == le1, "%s: the second try should yield the same error: %u != %u\n", name, le1, le2);

    status.dwCurrentState = 0xdeadbeef;
    ret = ControlService(svc_handle, SERVICE_CONTROL_STOP, &status);
    le2 = GetLastError();
    ok(!ret, "%s: ControlService() should have failed\n", name);
    ok(le2 == ERROR_SERVICE_NOT_ACTIVE, "%s: %d != ERROR_SERVICE_NOT_ACTIVE\n", name, le2);
    ok(status.dwCurrentState == SERVICE_STOPPED ||
       broken(is_nt4),
       "%s: should be stopped state=%x\n", name, status.dwCurrentState);

    return le1;
}
