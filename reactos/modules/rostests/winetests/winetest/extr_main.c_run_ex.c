
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int hProcess; int hThread; } ;
struct TYPE_6__ {scalar_t__ dwFlags; } ;
typedef TYPE_1__ STARTUPINFO ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int DWORD ;


 int CREATE_DEFAULT_ERROR_MODE ;
 int CloseHandle (int ) ;
 int CreateProcessA (int *,char*,int *,int *,int ,int ,int *,char const*,TYPE_1__*,TYPE_2__*) ;
 int GetExitCodeProcess (int ,int*) ;
 int GetLastError () ;
 int GetStartupInfo (TYPE_1__*) ;
 int O_CREAT ;
 int O_WRONLY ;
 int R_ERROR ;
 int R_FATAL ;
 int TRUE ;
 int TerminateProcess (int ,int) ;



 int WaitForSingleObject (int ,int) ;
 int close (int) ;
 int dup (int) ;
 int dup2 (int,int) ;
 int errno ;
 int open (char const*,int,int) ;
 int report (int ,char*,...) ;

__attribute__((used)) static int
run_ex (char *cmd, const char *out, const char *tempdir, DWORD ms)
{
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    int fd, oldstdout = -1;
    DWORD wait, status;

    GetStartupInfo (&si);
    si.dwFlags = 0;

    if (out) {
        fd = open (out, O_WRONLY | O_CREAT, 0666);
        if (-1 == fd)
            report (R_FATAL, "Can't open '%s': %d", out, errno);
        oldstdout = dup (1);
        if (-1 == oldstdout)
            report (R_FATAL, "Can't save stdout: %d", errno);
        if (-1 == dup2 (fd, 1))
            report (R_FATAL, "Can't redirect stdout: %d", errno);
        close (fd);
    }

    if (!CreateProcessA (((void*)0), cmd, ((void*)0), ((void*)0), TRUE, CREATE_DEFAULT_ERROR_MODE,
                         ((void*)0), tempdir, &si, &pi)) {
        status = -2;
    } else {
        CloseHandle (pi.hThread);
        wait = WaitForSingleObject (pi.hProcess, ms);
        if (wait == 129) {
            GetExitCodeProcess (pi.hProcess, &status);
        } else {
            switch (wait) {
            case 130:
                report (R_ERROR, "Wait for '%s' failed: %d", cmd,
                        GetLastError ());
                break;
            case 128:
                report (R_ERROR, "Process '%s' timed out.", cmd);
                break;
            default:
                report (R_ERROR, "Wait returned %d", wait);
            }
            status = wait;
            if (!TerminateProcess (pi.hProcess, 257))
                report (R_ERROR, "TerminateProcess failed: %d",
                        GetLastError ());
            wait = WaitForSingleObject (pi.hProcess, 5000);
            switch (wait) {
            case 130:
                report (R_ERROR,
                        "Wait for termination of '%s' failed: %d",
                        cmd, GetLastError ());
                break;
            case 129:
                break;
            case 128:
                report (R_ERROR, "Can't kill process '%s'", cmd);
                break;
            default:
                report (R_ERROR, "Waiting for termination: %d",
                        wait);
            }
        }
        CloseHandle (pi.hProcess);
    }

    if (out) {
        close (1);
        if (-1 == dup2 (oldstdout, 1))
            report (R_FATAL, "Can't recover stdout: %d", errno);
        close (oldstdout);
    }
    return status;
}
