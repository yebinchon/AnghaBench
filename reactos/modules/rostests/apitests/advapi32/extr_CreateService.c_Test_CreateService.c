
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseServiceHandle (int *) ;
 int * CreateServiceW (int *,char*,int *,int ,int ,int ,int ,char*,char*,scalar_t__*,int *,int *,int *) ;
 int DELETE ;
 int DNS_ERROR_RCODE_NXRRSET ;
 int DestroyService (int *) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 scalar_t__ MakeService (int *,char*,int **,scalar_t__*) ;
 int * OpenSCManagerW (int *,int *,int ) ;
 int SC_MANAGER_CREATE_SERVICE ;
 int SERVICE_BOOT_START ;
 int SERVICE_ERROR_IGNORE ;
 int SERVICE_KERNEL_DRIVER ;
 int SetLastError (int ) ;
 int ok (int,char*,scalar_t__,...) ;
 int ok_err (int ) ;
 int skip (char*) ;

__attribute__((used)) static void Test_CreateService(void)
{
    SC_HANDLE hScm = ((void*)0);
    SC_HANDLE hService1 = ((void*)0), hService2 = ((void*)0);
    SC_HANDLE hService3 = ((void*)0);
    DWORD tag1 = 0, tag2 = 0;
    DWORD tag3 = 785;

    SetLastError(DNS_ERROR_RCODE_NXRRSET);
    hScm = OpenSCManagerW(((void*)0), ((void*)0), SC_MANAGER_CREATE_SERVICE);
    ok(hScm != ((void*)0), "Failed to open service manager, error=0x%08lx\n", GetLastError());
    if (!hScm)
    {
        skip("No service control manager; cannot proceed with CreateService test\n");
        goto cleanup;
    }

    ok_err(ERROR_SUCCESS);

    if (MakeService(hScm, L"advapi32_apitest_CreateService_Test_Service1", &hService1, &tag1))
        goto cleanup;

    if (MakeService(hScm, L"advapi32_apitest_CreateService_Test_Service2", &hService2, &tag2))
        goto cleanup;

    ok(tag1 != tag2, "tag1=%lu, tag2=%lu\n", tag1, tag2);


    hService3 = CreateServiceW(
                    hScm,
                    L"advapi32_apitest_CreateService_Test_Service2",
                    ((void*)0),
                    DELETE,
                    SERVICE_KERNEL_DRIVER,
                    SERVICE_BOOT_START,
                    SERVICE_ERROR_IGNORE,
                    L"%systemroot%\\drivers\\win32k.sys",
                    ((void*)0),
                    &tag3,
                    ((void*)0),
                    ((void*)0),
                    ((void*)0));
    ok(hService3 == ((void*)0), "hService3=%p\n", hService3);
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "error=%lu\n", GetLastError());
    ok(tag3 == 785, "tag3=%lu\n", tag3);
    DestroyService(hService3);

    hService3 = CreateServiceW(
                    hScm,
                    L"advapi32_apitest_CreateService_Test_Service2",
                    ((void*)0),
                    DELETE,
                    SERVICE_KERNEL_DRIVER,
                    SERVICE_BOOT_START,
                    SERVICE_ERROR_IGNORE,
                    L"%systemroot%\\drivers\\win32k.sys",
                    L"",
                    &tag3,
                    ((void*)0),
                    ((void*)0),
                    ((void*)0));
    ok(hService3 == ((void*)0), "hService3=%p\n", hService3);
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "error=%lu\n", GetLastError());
    ok(tag3 == 785, "tag3=%lu\n", tag3);
    DestroyService(hService3);

cleanup:

    DestroyService(hService2);
    DestroyService(hService1);

    if (hScm)
        CloseServiceHandle(hScm);
}
