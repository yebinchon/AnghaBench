
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int DispatchMessageA (int *) ;
 int FALSE ;
 int GetTickCount () ;
 scalar_t__ MsgWaitForMultipleObjects (int,int *,int ,int,int ) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (int *,int ,int ,int ,int ) ;
 int QS_ALLINPUT ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;

__attribute__((used)) static BOOL wait_for_event(HANDLE event, int timeout)
{
    DWORD end_time = GetTickCount() + timeout;
    MSG msg;

    do {
        if(MsgWaitForMultipleObjects(1, &event, FALSE, timeout, QS_ALLINPUT) == WAIT_OBJECT_0)
            return TRUE;
        while(PeekMessageA(&msg, 0, 0, 0, PM_REMOVE))
            DispatchMessageA(&msg);
        timeout = end_time - GetTickCount();
    }while(timeout > 0);

    return FALSE;
}
