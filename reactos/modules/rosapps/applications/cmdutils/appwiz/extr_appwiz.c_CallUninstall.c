
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int si ;
struct TYPE_7__ {int hProcess; int hThread; } ;
struct TYPE_6__ {int cb; int wShowWindow; } ;
typedef TYPE_1__ STARTUPINFO ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int MSG ;
typedef int LPTSTR ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 scalar_t__ CreateProcess (int *,int ,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int DispatchMessage (int *) ;
 int FALSE ;
 int INFINITE ;
 scalar_t__ MsgWaitForMultipleObjects (int,int *,int ,int ,int ) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessage (int *,int *,int ,int ,int ) ;
 int QS_ALLEVENTS ;
 int SW_SHOW ;
 int TranslateMessage (int *) ;
 scalar_t__ WAIT_FAILED ;
 scalar_t__ WAIT_OBJECT_0 ;
 int ZeroMemory (TYPE_1__*,int) ;

void CallUninstall(LPTSTR szUninstallString)
{
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    DWORD dwRet;
    MSG msg;

    ZeroMemory(&si, sizeof(si));
    si.cb = sizeof(si);
    si.wShowWindow = SW_SHOW;

    if (CreateProcess(((void*)0), szUninstallString, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &si, &pi))
    {
        CloseHandle(pi.hThread);

        for (;;)
        {
            dwRet = MsgWaitForMultipleObjects(1, &pi.hProcess, FALSE, INFINITE, QS_ALLEVENTS);
            if (dwRet == WAIT_OBJECT_0 + 1)
            {
                 while (PeekMessage(&msg, ((void*)0), 0, 0, PM_REMOVE))
                 {
                     TranslateMessage(&msg);
                     DispatchMessage(&msg);
                 }
            }
            else if (dwRet == WAIT_OBJECT_0 || dwRet == WAIT_FAILED)
                break;
        }
        CloseHandle(pi.hProcess);
    }
}
