
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;
typedef int DWORD ;


 int DispatchMessageW (int *) ;
 int FALSE ;
 int GetTickCount () ;
 scalar_t__ MsgWaitForMultipleObjects (int ,int *,int ,int,int ) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageW (int *,int ,int ,int ,int ) ;
 int QS_ALLINPUT ;
 int TranslateMessage (int *) ;
 scalar_t__ WAIT_TIMEOUT ;

__attribute__((used)) static void processPendingMessages(void)
{
    MSG msg;
    int diff = 200;
    int min_timeout = 100;
    DWORD time = GetTickCount() + diff;

    while (diff > 0)
    {
        if (MsgWaitForMultipleObjects(0, ((void*)0), FALSE, min_timeout, QS_ALLINPUT) == WAIT_TIMEOUT)
            break;
        while (PeekMessageW(&msg, 0, 0, 0, PM_REMOVE))
        {
            TranslateMessage(&msg);
            DispatchMessageW(&msg);
        }
        diff = time - GetTickCount();
    }
}
