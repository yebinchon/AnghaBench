
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_4__ {int cbSize; } ;
typedef TYPE_1__ ZONEATTRIBUTES ;
typedef int IInternetZoneManager ;
typedef scalar_t__ HRESULT ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ FAILED (scalar_t__) ;
 int HKEY_CURRENT_USER ;
 scalar_t__ IInternetZoneManager_GetZoneAttributes (int *,int ,TYPE_1__*) ;
 scalar_t__ IInternetZoneManager_Release (int *) ;
 scalar_t__ IInternetZoneManager_SetZoneAttributes (int *,int,TYPE_1__*) ;
 int MAX_PATH ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyA (int ,int *,int **) ;
 scalar_t__ RegOpenKeyA (int ,int *,int **) ;
 scalar_t__ S_OK ;
 int URLZONE_CUSTOM ;
 int URLZONE_LOCAL_MACHINE ;
 scalar_t__ broken (int) ;
 int memset (int *,int,int) ;
 int myRegDeleteTreeA (int ,int *) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pCoInternetCreateZoneManager (int *,int **,int ) ;
 int sprintf (int *,char*,char*,int) ;
 char* szInternetSettingsKey ;
 int trace (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SetZoneAttributes(void)
{
    IInternetZoneManager *zonemgr = ((void*)0);
    CHAR buffer [sizeof(ZONEATTRIBUTES) + 16];
    ZONEATTRIBUTES* pZA = (ZONEATTRIBUTES*) buffer;
    CHAR regpath[MAX_PATH];
    HKEY hkey;
    HRESULT hr;
    DWORD res;

    trace("testing SetZoneAttributes...\n");
    hr = pCoInternetCreateZoneManager(((void*)0), &zonemgr, 0);
    ok(hr == S_OK, "CoInternetCreateZoneManager result: 0x%x\n", hr);
    if (FAILED(hr))
        return;

    memset(buffer, -1, sizeof(buffer));
    hr = IInternetZoneManager_GetZoneAttributes(zonemgr, URLZONE_LOCAL_MACHINE, pZA);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

    sprintf(regpath, "%s\\Zones\\%d", szInternetSettingsKey, URLZONE_CUSTOM);
    res = RegCreateKeyA(HKEY_CURRENT_USER, regpath, &hkey);
    RegCloseKey(hkey);

    ok(res == ERROR_SUCCESS, "got %d (expected ERROR_SUCCESS)\n", res);
    if (res != ERROR_SUCCESS)
        goto cleanup;

    pZA->cbSize = sizeof(ZONEATTRIBUTES);
    hr = IInternetZoneManager_SetZoneAttributes(zonemgr, URLZONE_CUSTOM, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hr);


    hr = IInternetZoneManager_SetZoneAttributes(zonemgr, URLZONE_CUSTOM, pZA);
    if (hr == E_FAIL) {
        win_skip("SetZoneAttributes not supported: IE too old\n");
        goto cleanup;
    }
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);


    pZA->cbSize = sizeof(ZONEATTRIBUTES) + sizeof(DWORD);
    hr = IInternetZoneManager_SetZoneAttributes(zonemgr, URLZONE_CUSTOM, pZA);
    ok(hr == S_OK, "got 0x%x for sizeof(ZONEATTRIBUTES) + sizeof(DWORD) (expected S_OK)\n", hr);

    pZA->cbSize = sizeof(ZONEATTRIBUTES) - sizeof(DWORD);
    hr = IInternetZoneManager_SetZoneAttributes(zonemgr, URLZONE_CUSTOM, pZA);
    ok(hr == S_OK, "got 0x%x for sizeof(ZONEATTRIBUTES) - sizeof(DWORD) (expected S_OK)\n", hr);

    pZA->cbSize = 0;
    hr = IInternetZoneManager_SetZoneAttributes(zonemgr, URLZONE_CUSTOM, pZA);
    ok(hr == S_OK, "got 0x%x for size 0 (expected S_OK)\n", hr);


    myRegDeleteTreeA(HKEY_CURRENT_USER, regpath);



    hr = IInternetZoneManager_SetZoneAttributes(zonemgr, URLZONE_CUSTOM, pZA);
    ok((hr == S_OK) || broken(hr == E_FAIL), "got 0x%x (expected S_OK)\n", hr);


    res = RegOpenKeyA(HKEY_CURRENT_USER, regpath, &hkey);
    ok((res == ERROR_FILE_NOT_FOUND) && (hkey == ((void*)0)),
        "got %u with %p (expected ERROR_FILE_NOT_FOUND with NULL)\n", res, hkey);

    if (hkey) RegCloseKey(hkey);

cleanup:

    myRegDeleteTreeA(HKEY_CURRENT_USER, regpath);

    hr = IInternetZoneManager_Release(zonemgr);
    ok(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
}
