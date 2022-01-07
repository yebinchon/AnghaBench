
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;
typedef scalar_t__ DWORD ;
typedef char CHAR ;


 int CloseServiceHandle (int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INVALID_ADDRESS ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SERVICE_DOES_NOT_EXIST ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 int GetServiceDisplayNameA (int *,char*,char*,scalar_t__*) ;
 int * OpenSCManagerA (int *,int *,int ) ;
 int * OpenServiceA (int *,char*,int ) ;
 int SC_MANAGER_CONNECT ;
 int SetLastError (int) ;
 int lstrcmpiA (char*,char*) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 char* spooler ;

__attribute__((used)) static void test_open_svc(void)
{
    SC_HANDLE scm_handle, svc_handle;
    CHAR displayname[4096];
    DWORD displaysize;


    SetLastError(0xdeadbeef);
    svc_handle = OpenServiceA(((void*)0), ((void*)0), 0);
    ok(!svc_handle, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_HANDLE, "Expected ERROR_INVALID_HANDLE, got %d\n", GetLastError());




    scm_handle = OpenSCManagerA(((void*)0), ((void*)0), SC_MANAGER_CONNECT);
    SetLastError(0xdeadbeef);
    svc_handle = OpenServiceA(scm_handle, ((void*)0), GENERIC_READ);
    ok(!svc_handle, "Expected failure\n");
    ok(GetLastError() == ERROR_INVALID_ADDRESS ||
       GetLastError() == ERROR_INVALID_PARAMETER ,
       "Expected ERROR_INVALID_ADDRESS or ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    CloseServiceHandle(scm_handle);


    scm_handle = OpenSCManagerA(((void*)0), ((void*)0), SC_MANAGER_CONNECT);
    SetLastError(0xdeadbeef);
    svc_handle = OpenServiceA(scm_handle, "deadbeef", GENERIC_READ);
    ok(!svc_handle, "Expected failure\n");
    ok(GetLastError() == ERROR_SERVICE_DOES_NOT_EXIST, "Expected ERROR_SERVICE_DOES_NOT_EXIST, got %d\n", GetLastError());
    CloseServiceHandle(scm_handle);


    scm_handle = OpenSCManagerA(((void*)0), ((void*)0), SC_MANAGER_CONNECT);
    SetLastError(0xdeadbeef);
    svc_handle = OpenServiceA(scm_handle, spooler, GENERIC_WRITE);
    if (!svc_handle && (GetLastError() == ERROR_ACCESS_DENIED))
        skip("Not enough rights to get a handle to the service\n");
    else
    {
        ok(svc_handle != ((void*)0), "Expected success, got error %u\n", GetLastError());
        CloseServiceHandle(svc_handle);
    }




    displaysize = 0;
    GetServiceDisplayNameA(scm_handle, spooler, ((void*)0), &displaysize);

    GetServiceDisplayNameA(scm_handle, spooler, displayname, &displaysize);



    if (!lstrcmpiA(spooler, displayname))
    {
        skip("displayname equals servicename\n");
        CloseServiceHandle(scm_handle);
        return;
    }

    SetLastError(0xdeadbeef);
    svc_handle = OpenServiceA(scm_handle, displayname, GENERIC_READ);
    ok(!svc_handle, "Expected failure\n");
    ok(GetLastError() == ERROR_SERVICE_DOES_NOT_EXIST, "Expected ERROR_SERVICE_DOES_NOT_EXIST, got %d\n", GetLastError());

    CloseServiceHandle(svc_handle);

    CloseServiceHandle(scm_handle);
}
