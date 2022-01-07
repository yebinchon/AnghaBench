
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hwndTarget; } ;
typedef int * HWND ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ GHOST_DATA ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 int DestroyWindow (int *) ;
 int FALSE ;
 int GetWindowThreadProcessId (int *,int *) ;
 scalar_t__ OpenProcess (int ,int ,int ) ;
 int PROCESS_TERMINATE ;
 int TerminateProcess (scalar_t__,int) ;

__attribute__((used)) static void
Ghost_DestroyTarget(GHOST_DATA *pData)
{
    HWND hwndTarget = pData->hwndTarget;
    DWORD pid;
    HANDLE hProcess;

    pData->hwndTarget = ((void*)0);
    GetWindowThreadProcessId(hwndTarget, &pid);

    hProcess = OpenProcess(PROCESS_TERMINATE, FALSE, pid);
    if (hProcess)
    {
        TerminateProcess(hProcess, -1);
        CloseHandle(hProcess);
    }

    DestroyWindow(hwndTarget);
}
