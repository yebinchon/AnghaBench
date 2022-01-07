
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int * SC_HANDLE ;
typedef int PBYTE ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;


 int * CreateServiceW (int *,int const*,int *,int ,int ,int ,int ,char*,char*,scalar_t__*,int *,int *,int *) ;
 int DELETE ;
 int DNS_ERROR_RCODE_NXRRSET ;
 scalar_t__ ERROR_SUCCESS ;
 int GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ REG_DWORD ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyW (int ,int *,int **) ;
 scalar_t__ RegQueryValueExW (int *,char*,int *,scalar_t__*,int ,scalar_t__*) ;
 int SERVICE_BOOT_START ;
 int SERVICE_ERROR_IGNORE ;
 int SERVICE_KERNEL_DRIVER ;
 int SetLastError (int ) ;
 int StringCbPrintfW (int *,int,char*,int const*) ;
 int ok (int,char*,...) ;
 int ok_err (scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static int MakeService(SC_HANDLE hScm, const wchar_t *serviceName, SC_HANDLE *hService, DWORD *tag)
{
    DWORD ret;
    HKEY hKey = ((void*)0);
    DWORD type = 0, tagData = 0, tagSize;
    wchar_t keyName[256];

    SetLastError(DNS_ERROR_RCODE_NXRRSET);
    *hService = CreateServiceW(
                    hScm,
                    serviceName,
                    ((void*)0),
                    DELETE,
                    SERVICE_KERNEL_DRIVER,
                    SERVICE_BOOT_START,
                    SERVICE_ERROR_IGNORE,
                    L"%systemroot%\\drivers\\win32k.sys",
                    L"advapi32_apitest_CreateService_Test_Group",
                    tag,
                    ((void*)0),
                    ((void*)0),
                    ((void*)0));

    ok(*hService != ((void*)0), "Failed to create service, error=0x%08lx\n", GetLastError());
    if (!*hService)
    {
        skip("No service; cannot proceed with CreateService test\n");
        return 1;
    }

    ok_err(ERROR_SUCCESS);

    ok(*tag != 0, "tag is zero, expected nonzero\n");

    StringCbPrintfW(keyName, sizeof keyName, L"System\\CurrentControlSet\\Services\\%ls", serviceName);
    ret = RegOpenKeyW(HKEY_LOCAL_MACHINE, keyName, &hKey);
    ok(ret == ERROR_SUCCESS, "RegOpenKeyW failed with 0x%08lx\n", ret);
    if (ret)
    {
        skip("No regkey; cannot proceed with CreateService test\n");
        return 2;
    }

    tagSize = sizeof tagData;
    ret = RegQueryValueExW(hKey, L"Tag", ((void*)0), &type, (PBYTE)&tagData, &tagSize);
    ok(ret == ERROR_SUCCESS, "RegQueryValueExW returned 0x%08lx\n", ret);
    ok(type == REG_DWORD, "type=%lu, expected REG_DWORD\n", type);
    ok(tagSize == sizeof tagData, "tagSize=%lu, expected 4\n", tagSize);
    ok(tagData == *tag, "tag=%lu, but registry says %lu\n", *tag, tagData);

    RegCloseKey(hKey);

    return 0;
}
