
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int si ;
struct TYPE_6__ {int * hProcess; int * hThread; } ;
struct TYPE_5__ {int cb; int member_0; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int * HANDLE ;
typedef int BOOL ;


 int CloseHandle (int *) ;
 int CreateProcessA (char*,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int FALSE ;
 int GetLastError () ;
 int MAX_PATH ;
 int ok (int ,char*,int ) ;
 int sprintf (char*,char*,char*,char*,char const*) ;
 int winetest_get_mainargs (char***) ;

__attribute__((used)) static HANDLE create_target_process(const char *arg)
{
    char **argv;
    char cmdline[MAX_PATH];
    BOOL ret;
    PROCESS_INFORMATION pi;
    STARTUPINFOA si = { 0 };
    si.cb = sizeof(si);

    pi.hThread = ((void*)0);
    pi.hProcess = ((void*)0);
    winetest_get_mainargs( &argv );
    sprintf(cmdline, "\"%s\" %s %s", argv[0], argv[1], arg);
    ret = CreateProcessA(argv[0], cmdline, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &si, &pi);
    ok(ret, "CreateProcess failed with error: %u\n", GetLastError());
    if (pi.hThread) CloseHandle(pi.hThread);
    return pi.hProcess;
}
