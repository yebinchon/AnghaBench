
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int FEATURE_BEHAVIORS ;
 int FEATURE_ZONE_ELEVATION ;
 int GET_FEATURE_FROM_PROCESS ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetModuleFileNameA (int *,char*,int) ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int MAX_PATH ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyA (int ,char const*,int *) ;
 int RegDeleteKeyA (int ,char const*) ;
 int RegDeleteValueA (int ,char*) ;
 scalar_t__ RegOpenKeyA (int ,char const*,int *) ;
 scalar_t__ RegSetValueExA (int ,char*,int ,int ,int *,int) ;
 int SET_FEATURE_ON_PROCESS ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ TRUE ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCoInternetIsFeatureEnabled (int ,int ) ;
 scalar_t__ pCoInternetSetFeatureEnabled (int ,int ,scalar_t__) ;
 int pIEInstallScope ;
 int skip (char*) ;
 char* strrchr (char*,char) ;
 char const* szFeatureControlKey ;
 int test_internet_feature_defaults () ;
 int win_skip (char*) ;

__attribute__((used)) static void test_internet_features_registry(void) {
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
        win_skip("Skipping internet feature registry tests, IE is too old...\n");
        return;
    }

    res = GetModuleFileNameA(((void*)0), module, sizeof(module));
    ok(res, "GetModuleFileName failed: %d\n", GetLastError());

    name = strrchr(module, '\\')+1;


    res = RegOpenKeyA(HKEY_CURRENT_USER, szFeatureControlKey, &feature_control);
    ok(res == ERROR_SUCCESS, "RegCreateKey failed: %d\n", res);

    res = RegOpenKeyA(feature_control, szFeatureBehaviorsKey, &feature);
    if(res == ERROR_SUCCESS) {

        delete_feature_key = FALSE;
    }else {
        res = RegCreateKeyA(feature_control, szFeatureBehaviorsKey, &feature);
        ok(res == ERROR_SUCCESS, "RegCreateKey failed: %d\n", res);
    }

    value = 0;
    res = RegSetValueExA(feature, name, 0, REG_DWORD, (BYTE*)&value, sizeof(DWORD));
    ok(res == ERROR_SUCCESS, "RegSetValueEx failed: %d\n", res);

    hres = pCoInternetIsFeatureEnabled(FEATURE_BEHAVIORS, GET_FEATURE_FROM_PROCESS);
    ok(hres == S_FALSE, "CoInternetIsFeatureEnabled returned %08x, expected S_FALSE\n", hres);

    if(delete_feature_key) {
        RegCloseKey(feature);
        RegDeleteKeyA(feature_control, szFeatureBehaviorsKey);
    } else {
        RegDeleteValueA(feature, name);
        RegCloseKey(feature);
    }


    hres = pCoInternetIsFeatureEnabled(FEATURE_BEHAVIORS, GET_FEATURE_FROM_PROCESS);
    ok(hres == S_FALSE, "CoInternetIsFeatureEnabled returned %08x, expected S_FALSE\n", hres);


    hres = pCoInternetSetFeatureEnabled(FEATURE_BEHAVIORS, SET_FEATURE_ON_PROCESS, TRUE);
    ok(hres == S_OK, "CoInternetSetFeatureEnabled failed: %08x\n", hres);

    RegCloseKey(feature_control);

    res = RegOpenKeyA(HKEY_LOCAL_MACHINE, szFeatureControlKey, &feature_control);
    ok(res == ERROR_SUCCESS, "RegOpenKey failed: %d\n", res);

    res = RegOpenKeyA(feature_control, szFeatureZoneElevationKey, &feature);
    ok(res == ERROR_SUCCESS, "RegOpenKey failed: %d\n", res);

    value = 1;
    res = RegSetValueExA(feature, "*", 0, REG_DWORD, (BYTE*)&value, sizeof(DWORD));
    if (res == ERROR_ACCESS_DENIED)
    {
        skip("Not allowed to modify zone elevation\n");
        skip_zone = TRUE;
    }
    else
    {
        skip_zone = FALSE;
        ok(res == ERROR_SUCCESS, "RegSetValueEx failed: %d\n", res);

        hres = pCoInternetIsFeatureEnabled(FEATURE_ZONE_ELEVATION, GET_FEATURE_FROM_PROCESS);
        ok(hres == S_OK, "CoInternetIsFeatureEnabled returned %08x, expected S_OK\n", hres);
    }
    RegDeleteValueA(feature, "*");
    RegCloseKey(feature);
    RegCloseKey(feature_control);


    if (!skip_zone)
    {
        hres = pCoInternetIsFeatureEnabled(FEATURE_ZONE_ELEVATION, GET_FEATURE_FROM_PROCESS);
        ok(hres == S_OK, "CoInternetIsFeatureEnabled returned %08x, expected S_OK\n", hres);

        hres = pCoInternetSetFeatureEnabled(FEATURE_ZONE_ELEVATION, SET_FEATURE_ON_PROCESS, FALSE);
        ok(hres == S_OK, "CoInternetSetFeatureEnabled failed: %08x\n", hres);
    }

    test_internet_feature_defaults();
}
