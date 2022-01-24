#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  module ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FEATURE_BEHAVIORS ; 
 int /*<<< orphan*/  FEATURE_ZONE_ELEVATION ; 
 int /*<<< orphan*/  GET_FEATURE_FROM_PROCESS ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SET_FEATURE_ON_PROCESS ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  pIEInstallScope ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char*,char) ; 
 char const* szFeatureControlKey ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(void) {
    HRESULT hres;
    DWORD res;
    char module[MAX_PATH];
    char *name;
    HKEY feature_control;
    HKEY feature;
    DWORD value;
    BOOL skip_zone;
    BOOL delete_feature_key = TRUE;

    static const char* szFeatureBehaviorsKey = "FEATURE_BEHAVIORS";
    static const char* szFeatureZoneElevationKey = "FEATURE_ZONE_ELEVATION";

    if(!pIEInstallScope) {
        FUNC14("Skipping internet feature registry tests, IE is too old...\n");
        return;
    }

    res = FUNC1(NULL, module, sizeof(module));
    FUNC8(res, "GetModuleFileName failed: %d\n", FUNC0());

    name = FUNC12(module, '\\')+1;

    /* Some Windows machines don't have a FeatureControl key in HKCU. */
    res = FUNC6(HKEY_CURRENT_USER, szFeatureControlKey, &feature_control);
    FUNC8(res == ERROR_SUCCESS, "RegCreateKey failed: %d\n", res);

    res = FUNC6(feature_control, szFeatureBehaviorsKey, &feature);
    if(res == ERROR_SUCCESS) {
        /* FEATURE_BEHAVIORS already existed, so don't delete it when we're done. */
        delete_feature_key = FALSE;
    }else {
        res = FUNC3(feature_control, szFeatureBehaviorsKey, &feature);
        FUNC8(res == ERROR_SUCCESS, "RegCreateKey failed: %d\n", res);
    }

    value = 0;
    res = FUNC7(feature, name, 0, REG_DWORD, (BYTE*)&value, sizeof(DWORD));
    FUNC8(res == ERROR_SUCCESS, "RegSetValueEx failed: %d\n", res);

    hres = FUNC9(FEATURE_BEHAVIORS, GET_FEATURE_FROM_PROCESS);
    FUNC8(hres == S_FALSE, "CoInternetIsFeatureEnabled returned %08x, expected S_FALSE\n", hres);

    if(delete_feature_key) {
        FUNC2(feature);
        FUNC4(feature_control, szFeatureBehaviorsKey);
    } else {
        FUNC5(feature, name);
        FUNC2(feature);
    }

    /* IE's feature control cached the value it got from the registry earlier. */
    hres = FUNC9(FEATURE_BEHAVIORS, GET_FEATURE_FROM_PROCESS);
    FUNC8(hres == S_FALSE, "CoInternetIsFeatureEnabled returned %08x, expected S_FALSE\n", hres);

    /* Restore this feature back to its default value. */
    hres = FUNC10(FEATURE_BEHAVIORS, SET_FEATURE_ON_PROCESS, TRUE);
    FUNC8(hres == S_OK, "CoInternetSetFeatureEnabled failed: %08x\n", hres);

    FUNC2(feature_control);

    res = FUNC6(HKEY_LOCAL_MACHINE, szFeatureControlKey, &feature_control);
    FUNC8(res == ERROR_SUCCESS, "RegOpenKey failed: %d\n", res);

    res = FUNC6(feature_control, szFeatureZoneElevationKey, &feature);
    FUNC8(res == ERROR_SUCCESS, "RegOpenKey failed: %d\n", res);

    value = 1;
    res = FUNC7(feature, "*", 0, REG_DWORD, (BYTE*)&value, sizeof(DWORD));
    if (res == ERROR_ACCESS_DENIED)
    {
        FUNC11("Not allowed to modify zone elevation\n");
        skip_zone = TRUE;
    }
    else
    {
        skip_zone = FALSE;
        FUNC8(res == ERROR_SUCCESS, "RegSetValueEx failed: %d\n", res);

        hres = FUNC9(FEATURE_ZONE_ELEVATION, GET_FEATURE_FROM_PROCESS);
        FUNC8(hres == S_OK, "CoInternetIsFeatureEnabled returned %08x, expected S_OK\n", hres);
    }
    FUNC5(feature, "*");
    FUNC2(feature);
    FUNC2(feature_control);

    /* Value is still cached from last time. */
    if (!skip_zone)
    {
        hres = FUNC9(FEATURE_ZONE_ELEVATION, GET_FEATURE_FROM_PROCESS);
        FUNC8(hres == S_OK, "CoInternetIsFeatureEnabled returned %08x, expected S_OK\n", hres);

        hres = FUNC10(FEATURE_ZONE_ELEVATION, SET_FEATURE_ON_PROCESS, FALSE);
        FUNC8(hres == S_OK, "CoInternetSetFeatureEnabled failed: %08x\n", hres);
    }

    FUNC13();
}