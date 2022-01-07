
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int si ;
struct TYPE_6__ {int hProcess; int hThread; } ;
struct TYPE_5__ {int cb; int member_0; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreateProcessA (char*,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int FALSE ;
 int GetLastError () ;
 int GetModuleFileNameA (int *,char*,int) ;
 int MAX_PATH ;
 int ok (int ,char*,int ) ;
 int sprintf (char*,char*,char*,char*) ;
 int winetest_get_mainargs (char***) ;
 int winetest_wait_child_process (int ) ;

__attribute__((used)) static void run_child_process(void)
{
    char cmdline[MAX_PATH];
    char path[MAX_PATH];
    char **argv;
    PROCESS_INFORMATION pi;
    STARTUPINFOA si = { 0 };
    BOOL ret;

    GetModuleFileNameA(((void*)0), path, MAX_PATH);

    si.cb = sizeof(si);
    winetest_get_mainargs(&argv);
    sprintf(cmdline, "\"%s\" %s domain_tests", argv[0], argv[1]);
    ret = CreateProcessA(argv[0], cmdline, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &si, &pi);
    ok(ret, "Failed to spawn child process: %u\n", GetLastError());
    winetest_wait_child_process(pi.hProcess);
    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);
}
