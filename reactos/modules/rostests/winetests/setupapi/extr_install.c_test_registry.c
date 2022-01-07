
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int BOOL ;


 char* CURR_DIR ;
 int DeleteFileA (char*) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int GetLastError () ;
 int HKEY_CURRENT_USER ;
 int MAX_PATH ;
 int RegCreateKeyA (int ,char*,int *) ;
 int RegDeleteKeyA (int ,char*) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 int cmdline_inf_reg ;
 int create_inf_file (char*,int ) ;
 char* inffile ;
 int ok (int,char*,...) ;
 int run_cmdline (char*,int,char*) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static void test_registry(void)
{
    HKEY key;
    LONG res;
    char path[MAX_PATH];
    BOOL ret;


    ok(!RegCreateKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest", &key),
        "Expected RegCreateKeyA to succeed\n");


    ok(!RegOpenKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest", &key),
        "Expected registry key to exist\n");

    create_inf_file(inffile, cmdline_inf_reg);
    sprintf(path, "%s\\%s", CURR_DIR, inffile);
    run_cmdline("DefaultInstall", 128, path);


    res = RegOpenKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest", &key);
    ok(res == ERROR_FILE_NOT_FOUND, "Didn't expect the registry key to exist\n");

    if (res == ERROR_SUCCESS)
    {
        RegDeleteKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest\\setupapitest");
        RegDeleteKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest");
    }
    ret = DeleteFileA(inffile);
    ok(ret, "Expected source inf to exist, last error was %d\n", GetLastError());
}
