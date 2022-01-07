
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwCurrentState; scalar_t__ dwProcessId; } ;
typedef TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef int SERVICE_STATUS ;
typedef int * SC_HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CloseServiceHandle (int *) ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_ADDRESS ;
 int ERROR_INVALID_HANDLE ;
 int ERROR_INVALID_LEVEL ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int * OpenSCManagerA (int *,int *,int ) ;
 int * OpenServiceA (int *,int ,int ) ;
 int QueryServiceStatus (int *,int *) ;
 int SC_MANAGER_CONNECT ;
 int SC_STATUS_PROCESS_INFO ;
 int SERVICE_QUERY_STATUS ;
 scalar_t__ SERVICE_RUNNING ;
 int STANDARD_RIGHTS_READ ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int pQueryServiceStatusEx (int *,int,int *,int,int*) ;
 int skip (char*) ;
 int spooler ;
 int win_skip (char*) ;

__attribute__((used)) static void test_query_svc(void)
{
    SC_HANDLE scm_handle, svc_handle;
    BOOL ret;
    SERVICE_STATUS status;
    SERVICE_STATUS_PROCESS *statusproc;
    DWORD bufsize, needed;


    SetLastError(0xdeadbeef);
    ret = QueryServiceStatus(((void*)0), ((void*)0));
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE,
       "Expected ERROR_INVALID_HANDLE, got %d\n", GetLastError());

    scm_handle = OpenSCManagerA(((void*)0), ((void*)0), SC_MANAGER_CONNECT);




    svc_handle = OpenServiceA(scm_handle, spooler, STANDARD_RIGHTS_READ);
    if (!svc_handle)
    {
        skip("Spooler service doesn't exist\n");
        CloseServiceHandle(scm_handle);
        return;
    }

    SetLastError(0xdeadbeef);
    ret = QueryServiceStatus(svc_handle, ((void*)0));
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_ADDRESS ||
       GetLastError() == ERROR_INVALID_PARAMETER ,
       "Unexpected last error %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = QueryServiceStatus(svc_handle, &status);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_ACCESS_DENIED,
       "Expected ERROR_ACCESS_DENIED, got %d\n", GetLastError());




    CloseServiceHandle(svc_handle);
    svc_handle = OpenServiceA(scm_handle, spooler, SERVICE_QUERY_STATUS);

    SetLastError(0xdeadbeef);
    ret = QueryServiceStatus(svc_handle, &status);
    ok(ret, "Expected success, got error %u\n", GetLastError());

    CloseServiceHandle(svc_handle);


    if (!pQueryServiceStatusEx)
    {
        win_skip( "QueryServiceStatusEx not available\n" );
        CloseServiceHandle(scm_handle);
        return;
    }


    svc_handle = OpenServiceA(scm_handle, spooler, STANDARD_RIGHTS_READ);


    SetLastError(0xdeadbeef);
    ret = pQueryServiceStatusEx(((void*)0), 1, ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_LEVEL,
       "Expected ERROR_INVALID_LEVEL, got %d\n", GetLastError());






    SetLastError(0xdeadbeef);
    ret = pQueryServiceStatusEx(((void*)0), SC_STATUS_PROCESS_INFO, ((void*)0), 0, &needed);

    if (GetLastError() != ERROR_INVALID_HANDLE)
    {
        ok(!ret, "Expected failure\n");
        ok(needed == sizeof(SERVICE_STATUS_PROCESS),
           "Needed buffersize is wrong : %d\n", needed);
        ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER,
           "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());
    }


    statusproc = HeapAlloc(GetProcessHeap(), 0, sizeof(SERVICE_STATUS_PROCESS));
    bufsize = needed;
    SetLastError(0xdeadbeef);
    ret = pQueryServiceStatusEx(((void*)0), SC_STATUS_PROCESS_INFO, (BYTE*)statusproc, bufsize, &needed);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE,
       "Expected ERROR_INVALID_HANDLE, got %d\n", GetLastError());
    HeapFree(GetProcessHeap(), 0, statusproc);


    SetLastError(0xdeadbeef);
    ret = pQueryServiceStatusEx(svc_handle, SC_STATUS_PROCESS_INFO, ((void*)0), 0, &needed);

    if (GetLastError() != ERROR_INVALID_PARAMETER)
    {
        ok(!ret, "Expected failure\n");
        ok(needed == sizeof(SERVICE_STATUS_PROCESS),
           "Needed buffersize is wrong : %d\n", needed);
        ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER,
           "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());
    }


    statusproc = HeapAlloc(GetProcessHeap(), 0, sizeof(SERVICE_STATUS_PROCESS));
    bufsize = sizeof(SERVICE_STATUS_PROCESS);
    SetLastError(0xdeadbeef);
    ret = pQueryServiceStatusEx(svc_handle, SC_STATUS_PROCESS_INFO, (BYTE*)statusproc, bufsize, &needed);
    ok(!ret, "Expected failure\n");
    ok(GetLastError() == ERROR_ACCESS_DENIED,
       "Expected ERROR_ACCESS_DENIED, got %d\n", GetLastError());
    HeapFree(GetProcessHeap(), 0, statusproc);


    CloseServiceHandle(svc_handle);
    svc_handle = OpenServiceA(scm_handle, spooler, SERVICE_QUERY_STATUS);


    statusproc = HeapAlloc(GetProcessHeap(), 0, sizeof(SERVICE_STATUS_PROCESS));
    bufsize = sizeof(SERVICE_STATUS_PROCESS);
    SetLastError(0xdeadbeef);
    ret = pQueryServiceStatusEx(svc_handle, SC_STATUS_PROCESS_INFO, (BYTE*)statusproc, bufsize, &needed);
    ok(ret, "Expected success, got error %u\n", GetLastError());
    if (statusproc->dwCurrentState == SERVICE_RUNNING)
        ok(statusproc->dwProcessId != 0,
           "Expect a process id for this running service\n");
    else
        ok(statusproc->dwProcessId == 0,
           "Expect no process id for this stopped service\n");


    SetLastError(0xdeadbeef);
    ret = pQueryServiceStatusEx(svc_handle, SC_STATUS_PROCESS_INFO, (BYTE*)statusproc, bufsize, ((void*)0));
    ok(!ret, "Expected failure\n");
    ok(broken(GetLastError() == ERROR_INVALID_PARAMETER) ||
       GetLastError() == ERROR_INVALID_ADDRESS, "got %d\n", GetLastError());

    HeapFree(GetProcessHeap(), 0, statusproc);

    CloseServiceHandle(svc_handle);
    CloseServiceHandle(scm_handle);
}
