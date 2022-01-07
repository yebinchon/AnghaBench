
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int si ;
struct TYPE_11__ {scalar_t__ hProcess; scalar_t__ hThread; } ;
struct TYPE_10__ {int cb; scalar_t__ hStdError; scalar_t__ hStdOutput; scalar_t__ hStdInput; int dwFlags; } ;
struct TYPE_9__ {scalar_t__ bStdOutput; scalar_t__ bStdError; scalar_t__ dwExitCode; int line; scalar_t__ cmdline; } ;
typedef TYPE_1__ TEST_ENTRY ;
typedef TYPE_2__ STARTUPINFOA ;
typedef TYPE_3__ PROCESS_INFORMATION ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateProcessA (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_2__*,TYPE_3__*) ;
 int GetExitCodeProcess (scalar_t__,scalar_t__*) ;
 int PeekNamedPipe (int *,int *,int,scalar_t__*,int *,int *) ;
 int PrepareForRedirect (TYPE_2__*,int *,int **,int **) ;
 int STARTF_USESTDHANDLES ;
 int TIMEOUT ;
 int TRUE ;
 int TerminateProcess (scalar_t__,int) ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (scalar_t__,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,int ,scalar_t__,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static void DoTestEntry(const TEST_ENTRY *pEntry)
{
    STARTUPINFOA si;
    PROCESS_INFORMATION pi;
    DWORD dwExitCode, dwWait;
    HANDLE hOutputRead = ((void*)0);
    HANDLE hErrorRead = ((void*)0);
    BYTE b;
    DWORD dwRead;
    BOOL bStdOutput, bStdError;

    memset(&si, 0, sizeof(si));
    si.cb = sizeof(si);
    si.dwFlags = STARTF_USESTDHANDLES;

    if (!PrepareForRedirect(&si, ((void*)0), &hOutputRead, &hErrorRead))
    {
        skip("PrepareForRedirect failed\n");
        return;
    }

    if (CreateProcessA(((void*)0), (char *)pEntry->cmdline, ((void*)0), ((void*)0), TRUE, 0, ((void*)0), ((void*)0), &si, &pi))
    {
        CloseHandle(si.hStdInput);
        dwWait = WaitForSingleObject(pi.hProcess, TIMEOUT);
        if (dwWait == WAIT_TIMEOUT)
        {
            TerminateProcess(pi.hProcess, 9999);
        }
        GetExitCodeProcess(pi.hProcess, &dwExitCode);
        CloseHandle(pi.hThread);
        CloseHandle(pi.hProcess);
    }
    else
    {
        dwExitCode = 8888;
    }

    PeekNamedPipe(hOutputRead, &b, 1, &dwRead, ((void*)0), ((void*)0));
    bStdOutput = dwRead != 0;
    PeekNamedPipe(hErrorRead, &b, 1, &dwRead, ((void*)0), ((void*)0));
    bStdError = dwRead != 0;

    if (si.hStdInput)
        CloseHandle(si.hStdInput);
    if (si.hStdOutput)
        CloseHandle(si.hStdOutput);
    if (si.hStdError)
        CloseHandle(si.hStdError);

    ok(pEntry->bStdOutput == bStdOutput,
       "Line %u: bStdOutput %d vs %d\n",
       pEntry->line, pEntry->bStdOutput, bStdOutput);

    ok(pEntry->bStdError == bStdError,
       "Line %u: bStdError %d vs %d\n",
       pEntry->line, pEntry->bStdError, bStdError);

    ok(pEntry->dwExitCode == dwExitCode,
       "Line %u: dwExitCode %ld vs %ld\n",
       pEntry->line, pEntry->dwExitCode, dwExitCode);
}
