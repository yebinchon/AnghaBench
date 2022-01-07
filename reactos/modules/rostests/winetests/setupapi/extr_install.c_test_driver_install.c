
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * SC_HANDLE ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 char* CURR_DIR ;
 int CloseHandle (int ) ;
 int CloseServiceHandle (int *) ;
 int CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int DELETE ;
 int DeleteFileA (char*) ;
 int DeleteService (int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_ALL ;
 int GENERIC_WRITE ;
 scalar_t__ GetFileAttributesA (char*) ;
 scalar_t__ GetLastError () ;
 int GetWindowsDirectoryA (char*,int) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 int * OpenSCManagerA (int *,int *,int ) ;
 int * OpenServiceA (int *,char*,int ) ;
 int SetLastError (int) ;
 int create_inf_file (char*,char const*) ;
 char* inffile ;
 int lstrcatA (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 int ok (int,char*,...) ;
 int run_cmdline (char*,int,char*) ;
 int skip (char*) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static void test_driver_install(void)
{
    HANDLE handle;
    SC_HANDLE scm_handle, svc_handle;
    BOOL ret;
    char path[MAX_PATH], windir[MAX_PATH], driver[MAX_PATH];
    DWORD attrs;

    static const char *inf =
        "[Version]\n"
        "Signature=\"$Chicago$\"\n"
        "[DestinationDirs]\n"
        "Winetest.DriverFiles=12\n"
        "[DefaultInstall]\n"
        "CopyFiles=Winetest.DriverFiles\n"
        "[DefaultInstall.Services]\n"
        "AddService=Winetest,,Winetest.Service\n"
        "[Winetest.Service]\n"
        "ServiceBinary=%12%\\winetest.sys\n"
        "ServiceType=1\n"
        "StartType=4\n"
        "ErrorControl=1\n"
        "[Winetest.DriverFiles]\n"
        "winetest.sys";


    SetLastError(0xdeadbeef);
    scm_handle = OpenSCManagerA(((void*)0), ((void*)0), GENERIC_ALL);
    if (!scm_handle && (GetLastError() == ERROR_ACCESS_DENIED))
    {
        skip("Not enough rights to install the service\n");
        return;
    }
    CloseServiceHandle(scm_handle);


    GetWindowsDirectoryA(windir, MAX_PATH);
    lstrcpyA(driver, windir);
    lstrcatA(driver, "\\system32\\drivers\\winetest.sys");


    handle = CreateFileA("winetest.sys", GENERIC_WRITE, 0, ((void*)0),
                           CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    CloseHandle(handle);

    create_inf_file(inffile, inf);
    sprintf(path, "%s\\%s", CURR_DIR, inffile);
    run_cmdline("DefaultInstall", 128, path);


    attrs = GetFileAttributesA(driver);
    ok(attrs != INVALID_FILE_ATTRIBUTES, "Expected driver to exist\n");

    scm_handle = OpenSCManagerA(((void*)0), ((void*)0), GENERIC_ALL);


    svc_handle = OpenServiceA(scm_handle, "Winetest", DELETE);
    ok(svc_handle != ((void*)0), "Service was not created\n");

    SetLastError(0xdeadbeef);
    ret = DeleteService(svc_handle);
    ok(ret, "Service could not be deleted : %d\n", GetLastError());

    CloseServiceHandle(svc_handle);
    CloseServiceHandle(scm_handle);


    DeleteFileA(inffile);
    DeleteFileA("winetest.sys");
    DeleteFileA(driver);
}
