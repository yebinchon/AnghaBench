
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int startup ;
struct TYPE_7__ {int hProcess; int hThread; } ;
struct TYPE_6__ {int cb; int wShowWindow; int dwFlags; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 scalar_t__ CreateProcessA (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetExitCodeProcess (int ,scalar_t__*) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int REG_SZ ;
 scalar_t__ RegSetValueExA (int ,char*,int ,int ,int *,int) ;
 int STARTF_USESHOWWINDOW ;
 scalar_t__ STATUS_ACCESS_VIOLATION ;
 int SW_SHOWNORMAL ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int trace (char*) ;

__attribute__((used)) static void crash_and_winedbg(HKEY hkey, const char* argv0)
{
    BOOL bRet;
    DWORD ret;
    char* cmd;
    PROCESS_INFORMATION info;
    STARTUPINFOA startup;
    DWORD exit_code;

    ret=RegSetValueExA(hkey, "auto", 0, REG_SZ, (BYTE*)"1", 2);
    ok(ret == ERROR_SUCCESS, "unable to set AeDebug/auto: ret=%d\n", ret);

    cmd=HeapAlloc(GetProcessHeap(), 0, strlen(argv0)+15+1);
    sprintf(cmd, "%s debugger crash", argv0);

    memset(&startup, 0, sizeof(startup));
    startup.cb = sizeof(startup);
    startup.dwFlags = STARTF_USESHOWWINDOW;
    startup.wShowWindow = SW_SHOWNORMAL;
    ret=CreateProcessA(((void*)0), cmd, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &startup, &info);
    ok(ret, "CreateProcess: err=%d\n", GetLastError());
    HeapFree(GetProcessHeap(), 0, cmd);
    CloseHandle(info.hThread);

    trace("waiting for child exit...\n");
    ok(WaitForSingleObject(info.hProcess, 60000) == WAIT_OBJECT_0, "Timed out waiting for the child to crash\n");
    bRet = GetExitCodeProcess(info.hProcess, &exit_code);
    ok(bRet, "GetExitCodeProcess failed: err=%d\n", GetLastError());
    ok(exit_code == STATUS_ACCESS_VIOLATION, "exit code = %08x\n", exit_code);
    CloseHandle(info.hProcess);
}
