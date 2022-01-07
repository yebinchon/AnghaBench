
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hProcess; int hThread; } ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int DWORD ;


 int CREATE_NEW_CONSOLE ;
 int CloseHandle (int ) ;
 int CreateProcessA (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int FALSE ;
 int GetExitCodeProcess (int ,int*) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int TerminateProcess (int ,int) ;
 int WAIT_OBJECT_0 ;
 int WaitForSingleObject (int ,int) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static DWORD runcmd(const char* cmd)
{
    STARTUPINFOA si = {sizeof(STARTUPINFOA)};
    PROCESS_INFORMATION pi;
    char* wcmd;
    DWORD rc;


    wcmd = HeapAlloc(GetProcessHeap(), 0, strlen(cmd) + 1);
    strcpy(wcmd, cmd);




    rc = CreateProcessA(((void*)0), wcmd, ((void*)0), ((void*)0), FALSE, CREATE_NEW_CONSOLE, ((void*)0), ((void*)0), &si, &pi);
    HeapFree(GetProcessHeap(), 0, wcmd);
    if (!rc)
        return 260;

    rc = WaitForSingleObject(pi.hProcess, 5000);
    if (rc == WAIT_OBJECT_0)
        GetExitCodeProcess(pi.hProcess, &rc);
    else
        TerminateProcess(pi.hProcess, 1);
    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);

    return rc;
}
