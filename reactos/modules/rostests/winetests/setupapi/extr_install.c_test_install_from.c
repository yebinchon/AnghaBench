
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int HINF ;
typedef int BOOL ;


 char* CURR_DIR ;
 int DeleteFileA (char*) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int HKEY_CURRENT_USER ;
 int INF_STYLE_WIN4 ;
 int MAX_PATH ;
 int RegCreateKeyA (int ,char*,int *) ;
 int RegDeleteKeyA (int ,char*) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 int SPINST_REGISTRY ;
 int SetLastError (int) ;
 int SetupCloseInfFile (int ) ;
 int SetupInstallFromInfSectionA (int *,int ,char*,int ,int ,char*,int ,int *,int *,int *,int *) ;
 int SetupOpenInfFileA (char*,int *,int ,int *) ;
 int cmdline_inf_reg ;
 int create_inf_file (char*,int ) ;
 char* inffile ;
 int ok (int,char*,...) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static void test_install_from(void)
{
    char path[MAX_PATH];
    HINF infhandle;
    HKEY key;
    LONG res;
    BOOL ret;


    ok(!RegCreateKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest", &key),
        "Expected RegCreateKeyA to succeed\n");


    ok(!RegOpenKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest", &key),
        "Expected registry key to exist\n");

    create_inf_file(inffile, cmdline_inf_reg);
    sprintf(path, "%s\\%s", CURR_DIR, inffile);
    infhandle = SetupOpenInfFileA(path, ((void*)0), INF_STYLE_WIN4, ((void*)0));
    SetLastError(0xdeadbeef);
    ret = SetupInstallFromInfSectionA(((void*)0), infhandle, "DefaultInstall", SPINST_REGISTRY, key,
        "A:\\", 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(ret, "Unexpected failure\n");
    ok(GetLastError() == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %08x\n", GetLastError());


    res = RegOpenKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest", &key);
    ok(res == ERROR_FILE_NOT_FOUND, "Didn't expect the registry key to exist\n");

    if (res == ERROR_SUCCESS)
    {
        RegDeleteKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest");
        RegDeleteKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest");
    }

    SetupCloseInfFile(infhandle);
    DeleteFileA(inffile);
}
