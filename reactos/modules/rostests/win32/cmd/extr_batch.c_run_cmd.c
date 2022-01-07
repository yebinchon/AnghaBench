
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int si ;
typedef int sa ;
struct TYPE_9__ {scalar_t__ hProcess; scalar_t__ hThread; } ;
struct TYPE_8__ {int member_0; int member_2; int member_1; } ;
struct TYPE_7__ {int member_0; scalar_t__ hStdError; scalar_t__ hStdOutput; int dwFlags; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ SECURITY_ATTRIBUTES ;
typedef TYPE_3__ PROCESS_INFORMATION ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int,TYPE_2__*,int ,int ,int *) ;
 int CreateProcessA (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_3__*) ;
 int DeleteFileA (char*) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int INFINITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int STARTF_USESTDHANDLES ;
 int TRUE ;
 int WaitForSingleObject (scalar_t__,int ) ;
 int WriteFile (scalar_t__,char const*,int ,int *,int *) ;
 int ok (int,char*,...) ;

__attribute__((used)) static BOOL run_cmd(const char *cmd_data, DWORD cmd_size)
{
    SECURITY_ATTRIBUTES sa = {sizeof(sa), 0, TRUE};
    char command[] = "test.cmd";
    STARTUPINFOA si = {sizeof(si)};
    PROCESS_INFORMATION pi;
    HANDLE file,fileerr;
    DWORD size;
    BOOL bres;

    file = CreateFileA("test.cmd", GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
            FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed\n");
    if(file == INVALID_HANDLE_VALUE)
        return FALSE;

    bres = WriteFile(file, cmd_data, cmd_size, &size, ((void*)0));
    CloseHandle(file);
    ok(bres, "Could not write to file: %u\n", GetLastError());
    if(!bres)
        return FALSE;

    file = CreateFileA("test.out", GENERIC_WRITE, FILE_SHARE_WRITE|FILE_SHARE_READ, &sa, CREATE_ALWAYS,
            FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed\n");
    if(file == INVALID_HANDLE_VALUE)
        return FALSE;

    fileerr = CreateFileA("test.err", GENERIC_WRITE, FILE_SHARE_WRITE|FILE_SHARE_READ, &sa, CREATE_ALWAYS,
            FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(fileerr != INVALID_HANDLE_VALUE, "CreateFile stderr failed\n");
    if(fileerr == INVALID_HANDLE_VALUE)
        return FALSE;

    si.dwFlags = STARTF_USESTDHANDLES;
    si.hStdOutput = file;
    si.hStdError = fileerr;
    bres = CreateProcessA(((void*)0), command, ((void*)0), ((void*)0), TRUE, 0, ((void*)0), ((void*)0), &si, &pi);
    ok(bres, "CreateProcess failed: %u\n", GetLastError());
    if(!bres) {
        DeleteFileA("test.out");
        return FALSE;
    }

    WaitForSingleObject(pi.hProcess, INFINITE);
    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);
    CloseHandle(file);
    CloseHandle(fileerr);
    DeleteFileA("test.cmd");
    return TRUE;
}
