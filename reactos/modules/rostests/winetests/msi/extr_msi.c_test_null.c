
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int REGSAM ;
typedef int MSIHANDLE ;
typedef int * LPBYTE ;
typedef scalar_t__ INSTALLSTATE ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ERROR_UNKNOWN_PRODUCT ;
 scalar_t__ ERROR_UNKNOWN_PROPERTY ;
 int GetProcessHeap () ;
 int HKEY_LOCAL_MACHINE ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int INSTALLSTATE_DEFAULT ;
 scalar_t__ INSTALLSTATE_INVALIDARG ;
 int KEY_ALL_ACCESS ;
 int KEY_WOW64_64KEY ;
 scalar_t__ MsiConfigureFeatureA (char*,char*,int ) ;
 scalar_t__ MsiConfigureFeatureW (int *,int *,int ) ;
 scalar_t__ MsiEnumFeaturesW (int *,int ,int *,int *) ;
 scalar_t__ MsiGetProductInfoA (char*,char*,int *,int *) ;
 scalar_t__ MsiQueryProductStateW (int *) ;
 int REG_SZ ;
 scalar_t__ RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExA (int ,char*,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegDeleteValueA (int ,int *) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int,int *) ;
 scalar_t__ RegQueryValueExA (int ,int *,int ,int *,int *,int *) ;
 scalar_t__ RegSetValueA (int ,int *,int ,char*,int ) ;
 scalar_t__ RegSetValueExA (int ,int *,int ,int ,int *,int ) ;
 scalar_t__ delete_key (int ,char*,int) ;
 scalar_t__ is_wow64 ;
 int ok (int,char*,...) ;
 scalar_t__ pMsiOpenPackageExW (int *,int ,int *) ;
 int skip (char*) ;
 int strlen (char*) ;

__attribute__((used)) static void test_null(void)
{
    MSIHANDLE hpkg;
    UINT r;
    HKEY hkey;
    DWORD dwType, cbData;
    LPBYTE lpData = ((void*)0);
    INSTALLSTATE state;
    REGSAM access = KEY_ALL_ACCESS;

    if (is_wow64)
        access |= KEY_WOW64_64KEY;

    r = pMsiOpenPackageExW(((void*)0), 0, &hpkg);
    ok( r == ERROR_INVALID_PARAMETER,"wrong error\n");

    state = MsiQueryProductStateW(((void*)0));
    ok( state == INSTALLSTATE_INVALIDARG, "wrong return\n");

    r = MsiEnumFeaturesW(((void*)0),0,((void*)0),((void*)0));
    ok( r == ERROR_INVALID_PARAMETER,"wrong error\n");

    r = MsiConfigureFeatureW(((void*)0), ((void*)0), 0);
    ok( r == ERROR_INVALID_PARAMETER, "wrong error\n");

    r = MsiConfigureFeatureA("{00000000-0000-0000-0000-000000000000}", ((void*)0), 0);
    ok( r == ERROR_INVALID_PARAMETER, "wrong error\n");

    r = MsiConfigureFeatureA("{00000000-0000-0000-0000-000000000001}", "foo", 0);
    ok( r == ERROR_INVALID_PARAMETER, "wrong error %d\n", r);

    r = MsiConfigureFeatureA("{00000000-0000-0000-0000-000000000002}", "foo", INSTALLSTATE_DEFAULT);
    ok( r == ERROR_UNKNOWN_PRODUCT, "wrong error %d\n", r);





    r = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall", 0, access, &hkey);
    if (r == ERROR_ACCESS_DENIED)
    {
        skip("Not enough rights to perform tests\n");
        return;
    }
    ok( r == ERROR_SUCCESS, "wrong error %d\n", r);

    r = RegQueryValueExA(hkey, ((void*)0), 0, &dwType, lpData, &cbData);
    ok ( r == ERROR_SUCCESS || r == ERROR_FILE_NOT_FOUND, "wrong error %d\n", r);
    if ( r == ERROR_SUCCESS )
    {
        lpData = HeapAlloc(GetProcessHeap(), 0, cbData);
        if (!lpData)
            skip("Out of memory\n");
        else
        {
            r = RegQueryValueExA(hkey, ((void*)0), 0, &dwType, lpData, &cbData);
            ok ( r == ERROR_SUCCESS, "wrong error %d\n", r);
        }
    }

    r = RegSetValueA(hkey, ((void*)0), REG_SZ, "test", strlen("test"));
    if (r == ERROR_ACCESS_DENIED)
    {
        skip("Not enough rights to perform tests\n");
        HeapFree(GetProcessHeap(), 0, lpData);
        RegCloseKey(hkey);
        return;
    }
    ok( r == ERROR_SUCCESS, "wrong error %d\n", r);

    r = MsiGetProductInfoA("", "", ((void*)0), ((void*)0));
    ok ( r == ERROR_INVALID_PARAMETER, "wrong error %d\n", r);

    if (lpData)
    {
        r = RegSetValueExA(hkey, ((void*)0), 0, dwType, lpData, cbData);
        ok ( r == ERROR_SUCCESS, "wrong error %d\n", r);

        HeapFree(GetProcessHeap(), 0, lpData);
    }
    else
    {
        r = RegDeleteValueA(hkey, ((void*)0));
        ok ( r == ERROR_SUCCESS, "wrong error %d\n", r);
    }

    r = RegCloseKey(hkey);
    ok( r == ERROR_SUCCESS, "wrong error %d\n", r);


    r = RegCreateKeyExA(HKEY_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\{F1C3AF50-8B56-4A69-A00C-00773FE42F30}",
                        0, ((void*)0), 0, access, ((void*)0), &hkey, ((void*)0));
    ok( r == ERROR_SUCCESS, "wrong error %d\n", r);

    r = RegSetValueA(hkey, ((void*)0), REG_SZ, "test", strlen("test"));
    ok( r == ERROR_SUCCESS, "wrong error %d\n", r);

    r = MsiGetProductInfoA("{F1C3AF50-8B56-4A69-A00C-00773FE42F30}", "", ((void*)0), ((void*)0));
    ok ( r == ERROR_UNKNOWN_PROPERTY, "wrong error %d\n", r);

    r = RegCloseKey(hkey);
    ok( r == ERROR_SUCCESS, "wrong error %d\n", r);

    r = delete_key(HKEY_LOCAL_MACHINE, "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\{F1C3AF50-8B56-4A69-A00C-00773FE42F30}",
                   access & KEY_WOW64_64KEY);
    ok( r == ERROR_SUCCESS, "wrong error %d\n", r);
}
