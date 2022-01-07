
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int si ;
typedef int sa ;
struct TYPE_9__ {int hProcess; int hThread; } ;
struct TYPE_8__ {int nLength; int bInheritHandle; int * lpSecurityDescriptor; } ;
struct TYPE_7__ {int cb; void* hStdOutput; void* hStdError; void* hStdInput; int dwFlags; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ SECURITY_ATTRIBUTES ;
typedef TYPE_3__ PROCESS_INFORMATION ;
typedef int HANDLE ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreateProcessA (char const*,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_3__*) ;
 int GetLastError () ;
 void* GetStdHandle (int ) ;
 int MAX_PATH ;
 int STARTF_USESTDHANDLES ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int ,char*,char*,int ) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static HANDLE start_server(const char *argv0)
{
    PROCESS_INFORMATION pi;
    STARTUPINFOA si;
    SECURITY_ATTRIBUTES sa;
    char cmdline[MAX_PATH * 2];
    BOOL ret;

    memset(&si, 0, sizeof(si));
    si.cb = sizeof(si);
    si.dwFlags = STARTF_USESTDHANDLES;
    si.hStdInput = GetStdHandle(STD_INPUT_HANDLE);
    si.hStdOutput = GetStdHandle(STD_OUTPUT_HANDLE);
    si.hStdError = si.hStdOutput;

    sa.nLength = sizeof(sa);
    sa.lpSecurityDescriptor = ((void*)0);
    sa.bInheritHandle = TRUE;

    sprintf(cmdline, "\"%s\" ole_server -server", argv0);
    ret = CreateProcessA(argv0, cmdline, ((void*)0), ((void*)0), TRUE, 0, ((void*)0), ((void*)0), &si, &pi);
    ok(ret, "CreateProcess(%s) error %d\n", cmdline, GetLastError());
    if (!ret) return 0;

    CloseHandle(pi.hThread);
    return pi.hProcess;
}
