
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hProcess; int hThread; } ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreateProcessA (char*,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int HKEY_CURRENT_USER ;
 int MAX_PATH ;
 scalar_t__ RegCreateKeyA (int ,int ,int *) ;
 int RegDeleteKeyA (int ,int ) ;
 scalar_t__ RegOpenKeyA (int ,int ,int *) ;
 int ok (int,char*,scalar_t__) ;
 int pCoInternetIsFeatureEnabled ;
 int pCoInternetSetFeatureEnabled ;
 int sprintf (char*,char*,char*,char*) ;
 int szFeatureControlKey ;
 int test_CoInternetIsFeatureEnabled () ;
 int test_CoInternetSetFeatureEnabled () ;
 int test_internet_features_registry () ;
 int trace (char*) ;
 int win_skip (char*) ;
 int winetest_get_mainargs (char***) ;
 int winetest_wait_child_process (int ) ;

__attribute__((used)) static void test_internet_features(void) {
    HKEY key;
    DWORD res;

    if(!pCoInternetIsFeatureEnabled || !pCoInternetSetFeatureEnabled) {
        win_skip("Skipping internet feature tests, IE is too old\n");
        return;
    }


    res = RegOpenKeyA(HKEY_CURRENT_USER, szFeatureControlKey, &key);
    if(res != ERROR_SUCCESS) {
        PROCESS_INFORMATION pi;
        STARTUPINFOA si = { 0 };
        char cmdline[MAX_PATH];
        char **argv;
        BOOL ret;

        res = RegCreateKeyA(HKEY_CURRENT_USER, szFeatureControlKey, &key);
        ok(res == ERROR_SUCCESS, "RegCreateKey failed: %d\n", res);

        trace("Running features tests in a separated process.\n");

        winetest_get_mainargs( &argv );
        sprintf(cmdline, "\"%s\" %s internet_features", argv[0], argv[1]);
        ret = CreateProcessA(argv[0], cmdline, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &si, &pi);
        ok(ret, "Could not create process: %u\n", GetLastError());
        winetest_wait_child_process( pi.hProcess );
        CloseHandle(pi.hThread);
        CloseHandle(pi.hProcess);

        RegDeleteKeyA(HKEY_CURRENT_USER, szFeatureControlKey);
        return;
    }

    test_internet_features_registry();
    test_CoInternetIsFeatureEnabled();
    test_CoInternetSetFeatureEnabled();
}
