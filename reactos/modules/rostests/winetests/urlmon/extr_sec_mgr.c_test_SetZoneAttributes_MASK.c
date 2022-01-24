#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_4__ {int cbSize; } ;
typedef  TYPE_1__ ZONEATTRIBUTES ;
typedef  int /*<<< orphan*/  IInternetZoneManager ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int URLZONE_CUSTOM ; 
 int /*<<< orphan*/  URLZONE_LOCAL_MACHINE ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char*,int) ; 
 char* szInternetSettingsKey ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    IInternetZoneManager *zonemgr = NULL;
    CHAR buffer [sizeof(ZONEATTRIBUTES) + 16];
    ZONEATTRIBUTES* pZA = (ZONEATTRIBUTES*) buffer;
    CHAR regpath[MAX_PATH];
    HKEY hkey;
    HRESULT hr;
    DWORD res;

    FUNC13("testing SetZoneAttributes...\n");
    hr = FUNC11(NULL, &zonemgr, 0);
    FUNC10(hr == S_OK, "CoInternetCreateZoneManager result: 0x%x\n", hr);
    if (FUNC0(hr))
        return;

    FUNC8(buffer, -1, sizeof(buffer));
    hr = FUNC1(zonemgr, URLZONE_LOCAL_MACHINE, pZA);
    FUNC10(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

    FUNC12(regpath, "%s\\Zones\\%d", szInternetSettingsKey, URLZONE_CUSTOM);
    res = FUNC5(HKEY_CURRENT_USER, regpath, &hkey);
    FUNC4(hkey);

    FUNC10(res == ERROR_SUCCESS, "got %d (expected ERROR_SUCCESS)\n", res);
    if (res != ERROR_SUCCESS)
        goto cleanup;

    pZA->cbSize = sizeof(ZONEATTRIBUTES);
    hr = FUNC3(zonemgr, URLZONE_CUSTOM, NULL);
    FUNC10(hr == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hr);

    /* normal use */
    hr = FUNC3(zonemgr, URLZONE_CUSTOM, pZA);
    if (hr == E_FAIL) {
        FUNC14("SetZoneAttributes not supported: IE too old\n");
        goto cleanup;
    }
    FUNC10(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);

    /* native urlmon ignores cbSize */
    pZA->cbSize = sizeof(ZONEATTRIBUTES) + sizeof(DWORD);
    hr = FUNC3(zonemgr, URLZONE_CUSTOM, pZA);
    FUNC10(hr == S_OK, "got 0x%x for sizeof(ZONEATTRIBUTES) + sizeof(DWORD) (expected S_OK)\n", hr);

    pZA->cbSize = sizeof(ZONEATTRIBUTES) - sizeof(DWORD);
    hr = FUNC3(zonemgr, URLZONE_CUSTOM, pZA);
    FUNC10(hr == S_OK, "got 0x%x for sizeof(ZONEATTRIBUTES) - sizeof(DWORD) (expected S_OK)\n", hr);

    pZA->cbSize = 0;
    hr = FUNC3(zonemgr, URLZONE_CUSTOM, pZA);
    FUNC10(hr == S_OK, "got 0x%x for size 0 (expected S_OK)\n", hr);

    /* The key for the zone must be present, when calling SetZoneAttributes */
    FUNC9(HKEY_CURRENT_USER, regpath);
    /* E_FAIL is returned from IE6 here, which is reasonable.
       All newer IE return S_OK without saving the zone attributes to the registry.
       This is a Windows bug, but we have to accept that as standard */
    hr = FUNC3(zonemgr, URLZONE_CUSTOM, pZA);
    FUNC10((hr == S_OK) || FUNC7(hr == E_FAIL), "got 0x%x (expected S_OK)\n", hr);

    /* SetZoneAttributes did not create the directory */
    res = FUNC6(HKEY_CURRENT_USER, regpath, &hkey);
    FUNC10((res == ERROR_FILE_NOT_FOUND) && (hkey == NULL),
        "got %u with %p (expected ERROR_FILE_NOT_FOUND with NULL)\n", res, hkey);

    if (hkey) FUNC4(hkey);

cleanup:
    /* delete zone settings in the registry */
    FUNC9(HKEY_CURRENT_USER, regpath);

    hr = FUNC2(zonemgr);
    FUNC10(hr == S_OK, "got 0x%x (expected S_OK)\n", hr);
}