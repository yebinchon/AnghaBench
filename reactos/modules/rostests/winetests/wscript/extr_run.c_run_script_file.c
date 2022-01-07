
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int si ;
struct TYPE_6__ {int hProcess; int hThread; } ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CHECK_CALLED (int ) ;
 int CLEAR_CALLED (int ) ;
 int CloseHandle (int ) ;
 scalar_t__ CreateProcessA (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ GetExitCodeProcess (int ,int *) ;
 int GetLastError () ;
 int INFINITE ;
 int MAX_PATH ;
 int SET_EXPECT (int ) ;
 int TRUE ;
 int WaitForSingleObject (int ,int ) ;
 int ok (int,char*,int ,...) ;
 int reportSuccess ;
 char const* script_name ;
 int sprintf (char*,char*,char const*) ;
 int win_skip (char*) ;
 int wscript_process ;

__attribute__((used)) static void run_script_file(const char *file_name, DWORD expected_exit_code)
{
    char command[MAX_PATH];
    STARTUPINFOA si = {sizeof(si)};
    PROCESS_INFORMATION pi;
    DWORD exit_code;
    BOOL bres;

    script_name = file_name;
    sprintf(command, "wscript.exe %s arg1 2 ar3", file_name);

    SET_EXPECT(reportSuccess);

    bres = CreateProcessA(((void*)0), command, ((void*)0), ((void*)0), TRUE, 0, ((void*)0), ((void*)0), &si, &pi);
    if(!bres) {
        win_skip("script.exe is not available\n");
        CLEAR_CALLED(reportSuccess);
        return;
    }

    wscript_process = pi.hProcess;
    WaitForSingleObject(pi.hProcess, INFINITE);

    bres = GetExitCodeProcess(pi.hProcess, &exit_code);
    ok(bres, "GetExitCodeProcess failed: %u\n", GetLastError());
    ok(exit_code == expected_exit_code, "exit_code = %u, expected %u\n", exit_code, expected_exit_code);

    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);

    CHECK_CALLED(reportSuccess);
}
